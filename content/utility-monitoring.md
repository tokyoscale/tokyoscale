+++
title = "ユーティリティ計測プラットフォーム"
template = "works.html"
description = "水道・ガス・電力メーターと現場センサー——NWM・栄現・星源・思尔捷など実績計装とクラウドダッシュボードを一気通貫で。"
weight = 12

[extra]
mood_photo = "img/portfolio/utility-fleet-overview.jpg"
mood_photo_alt = "統合監視プラットフォームの運用ダッシュボード。数百台のデバイス状態と水位・水質のリアルタイム一覧。"
+++

水道・ガス・電力のメーターと現場機器は、ベンダーやプロトコルがバラバラになりがちです。現場オペレーターが欲しいのは「もう一つダッシュボード」ではなく、**異常の定義**、**誰が動くか**、**いつ復旧したか**が一本の線でつながる画面です。

この事例は、灌漑・揚水インフラと都市ガス配管を扱う地域向けに、東京スケイルが設計・構築した**統合監視プラットフォーム**の概要です。単一の製品カタログではなく、**一つの運用モデル**を示すポートフォリオ例として掲載しています。

## 何をつないでいるか

- **水** — 水位・流量・ポンプ／バルブの遠隔制御、チャネル別のレベル計とエンコーダー
- **電力** — 揚水ポンプ場の三相電力計：電圧・電流・力率・有効／無効エネルギー
- **ガス** — ガス調整点（GRP）の入出力圧力、設定値の遠隔変更、バルブ開閉状態
- **通信** — MQTTベースのデバイス台帳（7,000台超）、オンライン状態と最終通信時刻

現場のPLCやゲートウェイ、クラウド上の時系列データベース、オペレーター向けWeb UIまでを一つの製品体験にまとめています。

## 計装ハードウェア（提携メーカー）

現場で実績のあるメーカーから、用途に応じて機器を選定します。下記は実際に組み込む製品例です（各社公式カタログより）。

<div class="ts-vendor-grid">

<figure class="ts-vendor-card">
<img src="/img/vendors/nwm-ul-dw.png" alt="Ningbo Water Meter UL-DW 超音波スマート水道メーター（LoRa）" class="img-fluid" loading="lazy" decoding="async" width="400" height="400"/>
<figcaption>
<strong>Ningbo Water Meter</strong>
<span class="ts-vendor-product">UL-DW — 住宅用超音波スマートメーター（LoRa / NB-IoT / M-Bus）</span>
</figcaption>
</figure>

<figure class="ts-vendor-card">
<img src="/img/vendors/nwm-ul-bw.png" alt="Ningbo Water Meter UL-BW 大口超音波メーター" class="img-fluid" loading="lazy" decoding="async" width="400" height="400"/>
<figcaption>
<strong>Ningbo Water Meter</strong>
<span class="ts-vendor-product">UL-BW — 大口・産業用超音波メーター（DN50+）</span>
</figcaption>
</figure>

<figure class="ts-vendor-card">
<img src="/img/vendors/rongxian-em-flow.jpg" alt="Shandong Rongxian 電磁流量計" class="img-fluid" loading="lazy" decoding="async" width="400" height="400"/>
<figcaption>
<strong>Shandong Rongxian Instrument</strong>
<span class="ts-vendor-product">電磁流量計 — 工場ライン・揚水場の大口流量（同社：NB-IoT水道メーター、三相プリペイド電力メーター）</span>
</figcaption>
</figure>

<figure class="ts-vendor-card">
<img src="/img/vendors/xingyuan-meter.jpg" alt="Ningbo Xingyuan シングルジェット水道メーター" class="img-fluid" loading="lazy" decoding="async" width="400" height="400"/>
<figcaption>
<strong>Ningbo Xingyuan Meter</strong>
<span class="ts-vendor-product">LXSC シリーズ — シングルジェット水道メーター（DN15、スマート／M-Bus対応）</span>
</figcaption>
</figure>

<figure class="ts-vendor-card">
<img src="/img/vendors/sierjia-smart-meter.jpg" alt="Yuhuan Sierjia 超音波スマート水道メーター" class="img-fluid" loading="lazy" decoding="async" width="400" height="400"/>
<figcaption>
<strong>Yuhuan Sierjia Valve</strong>
<span class="ts-vendor-product">超音波スマートメーター — M-Bus / RS485、ISO 4064</span>
</figcaption>
</figure>

<figure class="ts-vendor-card">
<img src="/img/vendors/sierjia-motorized-valve.jpg" alt="Yuhuan Sierjia 電動ボールバルブ" class="img-fluid" loading="lazy" decoding="async" width="400" height="400"/>
<figcaption>
<strong>Yuhuan Sierjia Valve</strong>
<span class="ts-vendor-product">電動ボールバルブ — 遠隔開閉・プリペイド止水（DN15〜DN40）</span>
</figcaption>
</figure>

</div>

これらのメーターとバルブは、MQTTゲートウェイ経由でクラウドに接続し、上記の**クライアントダッシュボード**とデバイス台帳に統合されます。

## クライアント向けダッシュボード

同一のWebアプリで、運用全体像・地理配置・ガス調整点・メーター読取・揚水ポンプの現場HMIまでをカバーします。下記は実際のクライアント向け画面です（地域・言語は導入先に合わせてローカライズ可能）。

### 運用全体像 — デバイス台帳とKPI

<figure class="ts-portfolio-figure">
<img src="/img/portfolio/utility-fleet-overview.jpg" alt="数百台のデバイスを一覧する運用ダッシュボード。アクティブ数、低水位・低電池・通信品質のアラート件数と、井戸ごとの水位・水質・電池電圧。" class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>運用ホーム — デバイス総数・アクティブ／非アクティブ・異常サマリと、井戸（水位・TDS・電池）のリアルタイム一覧。オペレーターがシフト開始時に全体を把握する画面。</figcaption>
</figure>

### 地理配置 — 井戸・メーターの現場分布

<figure class="ts-portfolio-figure ts-portfolio-figure--map">
<img src="/img/portfolio/utility-device-geolocation.jpg" alt="衛星地図上に井戸メーターの設置位置を示す緑のピンが多数表示されたジオロケーションビュー。" class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>デバイス・ジオロケーション — 衛星地図上の設置ポイント。巡回・保全計画と、通信断エリアの把握に使います。</figcaption>
</figure>

### ガス — 調整点とバルブ

<figure class="ts-portfolio-figure">
<img src="/img/portfolio/utility-gas-regulation.jpg" alt="ガス調整点の入出力圧力ゲージ、設定値スライダー、24時間トレンドグラフと地図パネル。" class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>ガス調整点（GRP）— 入出力圧力、設定値の遠隔変更、24時間トレンド。IMEI・設置住所・最終通信時刻で資産管理と監視を一体化。</figcaption>
</figure>

### メーター読取 — 日次・月次のエネルギー計量

<figure class="ts-portfolio-figure">
<img src="/img/portfolio/utility-meter-readings.jpg" alt="スマートメーターの日次エネルギー読取値をタリフ別に表示するデータテーブル。" class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>スマートメーター読取 — 日次・月次・年次の有効／無効エネルギー（タリフ別）。請求・ロス分析とリアルタイム監視を同じ台帳から参照。</figcaption>
</figure>

### 揚水ポンプ — 配管スキーマと電力計

<figure class="ts-portfolio-figure">
<img src="/img/portfolio/utility-pump-schematic.jpg" alt="揚水ポンプ場の配管スキーマ。流量・圧力・バルブ制御と三相電力計の読み取りを一画面に表示。" class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>揚水ポンプ場の現場HMI — 配管ライン上の流量・圧力・ポンプ制御と、同じ画面内の三相電力計。水力と電力を一画面で比較。</figcaption>
</figure>

## 設計上のこだわり

- **閾値より先にエスカレーション** — 「何を異常とみなすか」「誰に通知するか」をダッシュボード設計の前提にする
- **現場と本部で同じ数字** — レポート間隔（10分〜時間単位）とリアルタイム画面の定義を揃える
- **段階的な展開** — ポンプ場1拠点から地域全体のデバイス台帳へ。テンプレート化した画面設計で横展開

製造・インフラ向けのIoT全般については [製造・工場オペレーション](/factories/) もご覧ください。類似の課題（漏洩・ロス・海外拠点の可視化）への応用をお話しできます。
