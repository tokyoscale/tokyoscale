+++
title = "Utility metering platform"
template = "works.html"
description = "Water, gas, and electric meters with proven hardware from NWM, Rongxian, Xingyuan, and Sierjia—cloud dashboards end to end."
weight = 12

[extra]
mood_photo = "img/portfolio/utility-fleet-overview.jpg"
mood_photo_alt = "Integrated operations dashboard listing hundreds of devices with live water level, quality, and battery readings."
+++

Water, gas, and electricity meters rarely share one vendor or protocol. Operators do not need *another* dashboard—they need **clear definitions of abnormal**, **who acts**, and **when recovery happened**, on screens they can trust during a shift.

This portfolio example summarizes an **integrated monitoring platform** TokyoScale designed and built for regional irrigation, pumping infrastructure, and urban gas distribution. It is one operational model—not a product brochure—showing how we tie field hardware to client-facing dashboards.

## What gets connected

- **Water** — level, flow, remote pump/valve control, per-channel level meters and encoders
- **Electricity** — three-phase metering at pump stations: voltage, current, power factor, active/reactive energy
- **Gas** — gas regulation points (GRP): inlet/outlet pressure, remote setpoints, valve open/close state
- **Connectivity** — MQTT device registry (7,000+ endpoints), online status, last-seen timestamps

Field PLCs and gateways, cloud time-series storage, and operator web UIs are delivered as one coherent product experience.

## Metering hardware (partner manufacturers)

We select proven instruments per deployment. Below are representative products we integrate (from each manufacturer’s catalog).

<div class="ts-vendor-grid">

<figure class="ts-vendor-card">
<img src="/img/vendors/nwm-ul-dw.png" alt="Ningbo Water Meter UL-DW ultrasonic smart water meter with LoRa" class="img-fluid" loading="lazy" decoding="async" width="400" height="400"/>
<figcaption>
<strong>Ningbo Water Meter</strong>
<span class="ts-vendor-product">UL-DW — residential ultrasonic smart meter (LoRa / NB-IoT / M-Bus)</span>
</figcaption>
</figure>

<figure class="ts-vendor-card">
<img src="/img/vendors/nwm-ul-bw.png" alt="Ningbo Water Meter UL-BW bulk ultrasonic meter" class="img-fluid" loading="lazy" decoding="async" width="400" height="400"/>
<figcaption>
<strong>Ningbo Water Meter</strong>
<span class="ts-vendor-product">UL-BW — bulk / industrial ultrasonic meter (DN50+)</span>
</figcaption>
</figure>

<figure class="ts-vendor-card">
<img src="/img/vendors/rongxian-em-flow.jpg" alt="Shandong Rongxian electromagnetic flow meter" class="img-fluid" loading="lazy" decoding="async" width="400" height="400"/>
<figcaption>
<strong>Shandong Rongxian Instrument</strong>
<span class="ts-vendor-product">Electromagnetic flow meter — plant and pump-station bulk flow (also NB-IoT water meters, prepaid 3-phase electricity)</span>
</figcaption>
</figure>

<figure class="ts-vendor-card">
<img src="/img/vendors/xingyuan-meter.jpg" alt="Ningbo Xingyuan single-jet water meter" class="img-fluid" loading="lazy" decoding="async" width="400" height="400"/>
<figcaption>
<strong>Ningbo Xingyuan Meter</strong>
<span class="ts-vendor-product">LXSC series — single-jet water meter (DN15, smart / M-Bus ready)</span>
</figcaption>
</figure>

<figure class="ts-vendor-card">
<img src="/img/vendors/sierjia-smart-meter.jpg" alt="Yuhuan Sierjia ultrasonic smart water meter" class="img-fluid" loading="lazy" decoding="async" width="400" height="400"/>
<figcaption>
<strong>Yuhuan Sierjia Valve</strong>
<span class="ts-vendor-product">Ultrasonic smart meter — M-Bus / RS485, ISO 4064</span>
</figcaption>
</figure>

<figure class="ts-vendor-card">
<img src="/img/vendors/sierjia-motorized-valve.jpg" alt="Yuhuan Sierjia motorized ball valve" class="img-fluid" loading="lazy" decoding="async" width="400" height="400"/>
<figcaption>
<strong>Yuhuan Sierjia Valve</strong>
<span class="ts-vendor-product">Motorized ball valve — remote shutoff, prepaid flow control (DN15–DN40)</span>
</figcaption>
</figure>

</div>

These meters and valves connect through MQTT gateways into the **client dashboards** and device registry below.

## Client dashboards

One web application covers fleet operations, geolocation, gas regulation, meter readings, and pump-station HMIs. Below are real client-facing screens (region and language are localized per deployment).

### Fleet overview — device registry and KPIs

<figure class="ts-portfolio-figure">
<img src="/img/portfolio/utility-fleet-overview.jpg" alt="Operations dashboard listing hundreds of devices with active counts, low-level and low-battery alerts, and per-well water level, quality, and battery voltage." class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>Operations home — total devices, active/inactive counts, alert summaries, and a live table of wells (level, TDS, battery). The screen operators open at the start of a shift.</figcaption>
</figure>

### Geolocation — field distribution

<figure class="ts-portfolio-figure ts-portfolio-figure--map">
<img src="/img/portfolio/utility-device-geolocation.jpg" alt="Satellite map with many green pins marking well meter locations across a regional deployment." class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>Device geolocation — installation points on satellite imagery. Used for patrol planning and spotting connectivity dead zones.</figcaption>
</figure>

### Gas — regulation points and valves

<figure class="ts-portfolio-figure">
<img src="/img/portfolio/utility-gas-regulation.jpg" alt="Gas regulation point with inlet/outlet pressure gauges, setpoint slider, 24-hour trend charts, and map panel." class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>Gas regulation point (GRP): inlet/outlet pressure, remote setpoints, 24-hour trends. Asset metadata (IMEI, address, last activity) alongside live readings.</figcaption>
</figure>

### Meter readings — daily and monthly energy

<figure class="ts-portfolio-figure">
<img src="/img/portfolio/utility-meter-readings.jpg" alt="Data table of smart meter daily energy readings broken down by tariff period." class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>Smart meter readings — daily, monthly, and yearly active/reactive energy by tariff. Billing, loss analysis, and live monitoring from one registry.</figcaption>
</figure>

### Pumping — piping schematic and power metering

<figure class="ts-portfolio-figure">
<img src="/img/portfolio/utility-pump-schematic.jpg" alt="Pump-station piping schematic with flow, pressure, valve control, and three-phase electricity meter readings on one screen." class="img-fluid rounded border" loading="lazy" decoding="async" width="1200" height="675"/>
<figcaption>Pump-station HMI — flow, pressure, and pump control on the piping schematic with three-phase meter readings on the same view. Hydraulic and electrical load in one place.</figcaption>
</figure>

## Design choices we keep

- **Escalation before thresholds** — define abnormal and notify paths before drawing charts
- **Same numbers in the field and at HQ** — align report intervals (10-minute to hourly) with live views
- **Phased rollout** — from one pump station to a regional device fleet, using templated screen design

For broader IoT and factory contexts, see our [Manufacturing & factory operations](/en/factories/) brief. We can discuss similar patterns for leaks, losses, and offshore visibility.
