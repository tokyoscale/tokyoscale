#!/usr/bin/env bash
# Fix apex → www redirect for tokyoscale.com (preserve path + query).
#
# Problem: https://tokyoscale.com/utility-monitoring/ → https://www.tokyoscale.com/
# Fix:     https://tokyoscale.com/*       → https://www.tokyoscale.com/$path
#
# Requires a Cloudflare API token for the account that owns tokyoscale.com with:
#   Zone → Zone → Read
#   Zone → Single Redirect → Edit  (or Zone → Dynamic Redirect → Edit)
#
# Usage:
#   export CLOUDFLARE_API_TOKEN='…'
#   ./scripts/fix-cloudflare-apex-redirect.sh
#
# Optional: CLOUDFLARE_ZONE_ID if you already know it.

set -euo pipefail

DOMAIN="${CLOUDFLARE_DOMAIN:-tokyoscale.com}"
API="https://api.cloudflare.com/client/v4"

if [[ -z "${CLOUDFLARE_API_TOKEN:-}" ]]; then
  echo "error: set CLOUDFLARE_API_TOKEN for the account that owns ${DOMAIN}" >&2
  exit 1
fi

cf_api() {
  local method="$1"
  local path="$2"
  local data="${3:-}"
  if [[ -n "$data" ]]; then
    curl -fsS -X "$method" "${API}${path}" \
      -H "Authorization: Bearer ${CLOUDFLARE_API_TOKEN}" \
      -H "Content-Type: application/json" \
      --data "$data"
  else
    curl -fsS -X "$method" "${API}${path}" \
      -H "Authorization: Bearer ${CLOUDFLARE_API_TOKEN}"
  fi
}

ZONE_ID="${CLOUDFLARE_ZONE_ID:-}"
if [[ -z "$ZONE_ID" ]]; then
  ZONE_ID="$(cf_api GET "/zones?name=${DOMAIN}" | python3 -c "
import json, sys
d = json.load(sys.stdin)
if not d.get('success'):
    print(d.get('errors'), file=sys.stderr)
    sys.exit(1)
zones = d.get('result') or []
if not zones:
    print(f'no zone found for {sys.argv[1]}', file=sys.stderr)
    sys.exit(1)
print(zones[0]['id'])
" "$DOMAIN")"
fi

echo "Using zone ${DOMAIN} (${ZONE_ID})"

# Dynamic redirect ruleset (Single Redirects API surface)
ENTRYPOINT="$(cf_api GET "/zones/${ZONE_ID}/rulesets/phases/http_request_dynamic_redirect/entrypoint")"

python3 <<'PY' "$ENTRYPOINT" "$ZONE_ID"
import json, sys, urllib.request, os

entry = json.loads(sys.argv[1])
zone_id = sys.argv[2]
token = os.environ["CLOUDFLARE_API_TOKEN"]
api = "https://api.cloudflare.com/client/v4"

rule = {
    "expression": '(http.host eq "tokyoscale.com")',
    "description": "Apex to www (preserve path)",
    "action": "redirect",
    "action_parameters": {
        "from_value": {
            "status_code": 301,
            "preserve_query_string": True,
            "target_url": {
                "expression": 'concat("https://www.tokyoscale.com", http.request.uri.path)'
            },
        }
    },
    "enabled": True,
}

rules = []
if entry.get("result") and entry["result"].get("rules"):
    for r in entry["result"]["rules"]:
        desc = (r.get("description") or "").lower()
        expr = r.get("expression") or ""
        # Drop broken apex rules that strip the path
        if "tokyoscale.com" in expr and "www.tokyoscale.com" in json.dumps(r.get("action_parameters", {})):
            if "${" not in json.dumps(r.get("action_parameters", {})) and "uri.path" not in json.dumps(r.get("action_parameters", {})):
                print(f"Removing broken rule: {r.get('description')!r}", file=sys.stderr)
                continue
        if desc == "apex to www (preserve path)":
            continue
        rules.append(r)

rules.insert(0, rule)
body = {
    "name": entry.get("result", {}).get("name") or "default",
    "kind": "zone",
    "phase": "http_request_dynamic_redirect",
    "rules": rules,
}

req = urllib.request.Request(
    f"{api}/zones/{zone_id}/rulesets/phases/http_request_dynamic_redirect/entrypoint",
    data=json.dumps(body).encode(),
    headers={
        "Authorization": f"Bearer {token}",
        "Content-Type": "application/json",
    },
    method="PUT",
)
with urllib.request.urlopen(req) as resp:
    out = json.load(resp)
if not out.get("success"):
    print(out, file=sys.stderr)
    sys.exit(1)
print("Redirect rule updated.")
PY

echo "Done. Verify:"
echo "  curl -sI https://tokyoscale.com/utility-monitoring/ | grep -i location"
echo "  # expect: location: https://www.tokyoscale.com/utility-monitoring/"
