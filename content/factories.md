+++
title = "製造・工場オペレーション"
template = "works.html"
description = "IoT・センサー・スマートメーターで、漏洩検知からOEE・ROIまで——製造現場の意思決定を磨くソフトとデータ。"
weight = 11

[extra]
mood_photo = "img/portfolio/factory-water-network.jpg"
mood_photo_alt = "製油所の給水ネットワーク監視。工場ライン・セメント工場への配水をスキーマ図と流量KPIで一覧。"
+++

製造現場では、**設備の断片化したデータ**、**属人の保全知識**、**サプライチェーンの遅延**が同時に効きます。海外拠点や協力工場との関係が深いほど、「この工場だけの妙」が増え、ダッシュボードを揃えても**意味のある閾値**が揃わないことがあります。

東京スケイルは、実績のある計装メーカーとクラウド基盤を組み合わせ、**どの漏れ・どのラインがお金と安全に効くか**を一緒に定義します。

## 現場の画面例

製油・倉庫・灌漑チャネルなど、実際に構築した監視画面の抜粋です（言語・地名は導入先に合わせてローカライズ可能）。

### 工場給水ネットワーク — 流量と配水先

<figure class="ts-portfolio-figure">
<img src="/img/portfolio/factory-water-network.jpg" alt="製油所の給水監視。揚水ポンプの流量KPIと、住宅・工場ライン・セメント工場への配水管スキーマ。" class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>給水ポンプの日次・月次流量と、配管スキーマ上の工場ライン・セメント工場など配水先別のメーター読取。総務・保全・環境が同じ画面を見られます。</figcaption>
</figure>

### 倉庫ライン — スマートメーターとゲートウェイ

<figure class="ts-portfolio-figure ts-portfolio-figure--map">
<img src="/img/portfolio/factory-warehouse-iot.jpg" alt="倉庫ラインのIoTネットワーク図。スマートメーター、圧力計、ゲートウェイの接続とオンライン状態。" class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>倉庫ラインの計装トポロジー — スマートメーター、圧力計、ゲートウェイの接続関係と死活。数千台規模の展開前に、拠点単位で設計・検証します。</figcaption>
</figure>

### プロセス制御 — 流量・水位のリアルタイム運転

<figure class="ts-portfolio-figure">
<img src="/img/portfolio/factory-flow-control.jpg" alt="チャネル別の水位セットポイント、流量（m³/s）、自動運転モードを示す制御画面。" class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>チャネル別の水位セットポイント、流量（m³/s）、自動／手動モード。異常の定義とエスカレーションを、オペレーター画面に先に組み込みます。</figcaption>
</figure>

### センサー校正 — エンコーダーとレベル計

<figure class="ts-portfolio-figure">
<img src="/img/portfolio/factory-sensor-calibration.jpg" alt="スルースゲートのエンコーダー校正と水位計の高さ・距離・水位の設定画面。" class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>エンコーダー校正、レベル計の設置高・水面距離・補正係数。現場の暗黙知を画面に落とし込む commissioning フェーズの例です。</figcaption>
</figure>

### 電力計 — 拠点別エネルギー読取

<figure class="ts-portfolio-figure">
<img src="/img/portfolio/factory-energy-report.jpg" alt="工場内の複数拠点の三相電力メーター読取レポート。有効・無効エネルギーの差分。" class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>拠点・部門別の三相電力メーター読取レポート。工場総務・環境チーム向けのロス分析と、ライン別の異常検知の土台になります。</figcaption>
</figure>

## 計装パートナー

製造現場の水・電力・流量計測に、次のメーカーを用途別に組み合わせます。

- **Ningbo Water Meter** — 工場総務・環境向けの大口超音波メーター、AMI/AMR、異常使用量のリモート監視
- **Shandong Rongxian Instrument** — 電磁流量計、三相プリペイド電力メーター、工場ラインの流量・電力一体監視
- **Ningbo Xingyuan Meter** — シングル／マルチジェットスマートメーター、M-Bus、産業口径の筐体・部品
- **Yuhuan Sierjia Valve** — 電動バルブ、遠隔止水、プロセスラインの流量制御

## テーマ例

- **IoT・センサーとエッジ** — 振動・温度・流量・消費電力。「取れるデータ」ではなく**異常の定義**と**エスカレーション**から逆算します。
- **水・エネルギー・材料ロス** — スマート水量計で**異常使用量・リーク候補**を早期検知。工場総務・保全・環境のクロス機能でROI試算につなげます。
- **海外拠点・協力工場との可視化** — 現地の規律とシステム文化が違うほど、**レポートの目的**と**現場の意思決定者**から揃えます。
- **OEEより復旧時間** — 異常時の復旧時間・再発率・待ち時間など、経営会議になりにくいが現場に効く指標を整理します。

## 期待する協働

設備メーカー、計装・インフラ機器プロバイダー、プラント運用、グループ統括のご担当との**橋渡し**がうまくいくケースが多く、単独SIの「機能一覧」だけでは済まないところに踏み込みます。

## 事例：統合ユーティリティダッシュボード

揚水ポンプ場のSCADA、7,000台超のMQTTメーター台帳、ガス調整点の監視までを一つの運用モデルにまとめたポートフォリオ例を掲載しています。

→ [ユーティリティ計測プラットフォーム](/utility-monitoring/)
