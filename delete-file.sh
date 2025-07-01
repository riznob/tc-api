#!/bin/bash

FILE_TOKEN="$1"

curl 'https://api.tenantcloud.com/v2/filemanager/destroy' \
    -H 'accept: application/json, text/plain, */*' \
    -H 'accept-language: en-US,en;q=0.9' \
    -H "authorization: Bearer $BEARER_TOKEN" \
    -H 'baggage: sentry-environment=production,sentry-release=v63.0.34,sentry-public_key=9b18938dd84f41b5931cdacc3d268d22,sentry-trace_id=a6d504f0181b4ff5a3d13cbc834bda6d,sentry-sample_rate=0.01,sentry-sampled=false' \
    -H 'content-type: application/json' \
    -b 'kryptonit3-counter=anXXfEWmbnsrCzE9ilug7mKU8o2OqRcHkohL4wH8csbHaJdEULZw1IZVI3axV3qaiTxvBRjC9oT49xf7; flaretrk=%2eyJmaXJzdFZpc2l0RGF0ZSI6IlR1ZSwgMDEgSnVsIDIwMjUgMDk6MDg6MDUgR01UIiwiY29udmVyc2lvbmRheXMiOiIwIiwic3VibWl0UGFnZSI6Imh0dHBzOi8vc3VwcG9ydC50ZW5hbnRjbG91ZC5jb20vZmFxIiwicmVmZXJyZXJVUkwiOiIiLCJsYW5kaW5nVVJMIjoiaHR0cHM6Ly9zdXBwb3J0LnRlbmFudGNsb3VkLmNvbS8iLCJsYXN0UmVmZXJyZXJVUkwiOiIiLCJsYXN0TGFuZGluZ1VSTCI6Imh0dHBzOi8vc3VwcG9ydC50ZW5hbnRjbG91ZC5jb20vIiwibGFzdFZpZXdlZFVSTCI6IiIsImRyaWxsRGF0YSI6eyJjaGFubmVsIjoiRGlyZWN0IHRyYWZmaWMiLCJkcmlsbERvd24xIjoiTm9uZSIsImRyaWxsRG93bjIiOiJOb25lIiwiZHJpbGxEb3duMyI6Ik5vbmUiLCJkcmlsbERvd240IjoiTm9uZSJ9LCJsYXN0RHJpbGxEYXRhIjp7ImNoYW5uZWwiOiJEaXJlY3QgdHJhZmZpYyIsImRyaWxsRG93bjEiOiJOb25lIiwiZHJpbGxEb3duMiI6Ik5vbmUiLCJkcmlsbERvd24zIjoiTm9uZSIsImRyaWxsRG93bjQiOiJOb25lIn0sImdjbGlkIjoiIiwibXNjbGtpZCI6IiIsImZiY2xpZCI6IiIsImdicmFpZCI6IiIsIndicmFpZCI6IiIsImlkIjoiIiwidmlzaXRzIjoxLCJsYXN0dmlzaXQiOjE3NTEzNjA4OTc1MzMsImN1c3RvbUZpZWxkcyI6e30sImxhbmRpbmdfdXJsIjoiaHR0cHM6Ly9zdXBwb3J0LnRlbmFudGNsb3VkLmNvbS8iLCJ0ZXN0X2RhdGEiOiJGcm9tIHJlZmVycmVyLCBvcmlnaW5hbCBVUkw6IGh0dHBzOi8vc3VwcG9ydC50ZW5hbnRjbG91ZC5jb20vIiwibGFuZGluZ19wYWdlX2dyb3VwIjoiLyJ9; tc_session=jxo2Foa18USZonKVJkRcK5QNdSIsuFvvNX5TQr85; tc_refresh_token=def50200e035183b80fcc9f91b7dfeed7523c3d591a64161e0b3b377ca3731b0283e5974e9001a2408f733414957fc98befef1cc0d59f1f61d5076d96f1818d8df7537b8bbde53c6da5c1327535003c71f1221b72cd846aa774e021ab9e08e2bc71938eba794bacba021cc55516b8dcb29a59916995fad97ea1e1b46810b09a6b8acee6b61b459617230e89b1de97156b0b63ce26af66c2fbaa5024b562d9922f267895b6e89e5053078827ba058cdd08d78811d702b6f9206a752b96e0f05570684cbd57090e529420e7b50cbe0defcaec36f4f798ce54fe6dfed28a27bee8c1e514226b7347cdc4b9ac10070b018ead5efe1d04e59cea502806ad74358988d0432a50e31600430222f4744d34089a420b0c152bfd4820c303ff48fa91ef8b1c3d5f53154cf2c01ee42efce5691c13c80efc47c5039721a682c4f61e39b3b460f25aa05dd52953cdf9e80fbd4fcb5da6f02c360e9535068a17b361616df7ac0cffe4a2c02ca9ff136f2d3ac31527e3013; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6Im5VZVNiNWl4bnZsWU5zcmNsR0x5THc9PSIsInZhbHVlIjoiVlBjejl5YUphb1czRVNzWmhMRjlmcExlbDMxSTNPcUtHOVhhNmtNaUwxSHR5QWpIcjArcTIycFNOSlNRZmFNMDhzVEIyNWoyS2Q0UWQ2NXgzL1UyY2hUaVRUWE1iTXFRU3E0dFRUbTJqVVR5TE5nUDVNV2NlT1h1RzVLRUMrbytGY2xMK0g1UzVVenZXcE9nUHpIcEJ3YlBVdDhZcFM3SlZnenFxOEJkYnNydFRSbEkvS0FHV0g0Mkl2ZmJDNXcyRmkrT2YwOS8waFd6NXJnY0NTSGd5RFhMZXM2Z3ByL0IvUFdjbzRJZlBiZDByMUtVWGk4NVFhUitCeGVZWm05QyIsIm1hYyI6ImI2YjM5OTUyNDc3MjE3OTQ0ODljZGJiMGIyMTQwOGM4MDkyNjc5M2I2MjdiOTcwMDc3YzljNjJkNGVkYzBkMzciLCJ0YWciOiIifQ%3D%3D' \
    -H 'origin: https://app.tenantcloud.com' \
    -H 'priority: u=1, i' \
    -H 'referer: https://app.tenantcloud.com/' \
    -H 'sec-ch-ua: "Not)A;Brand";v="8", "Chromium";v="138", "Brave";v="138"' \
    -H 'sec-ch-ua-mobile: ?0' \
    -H 'sec-ch-ua-platform: "macOS"' \
    -H 'sec-fetch-dest: empty' \
    -H 'sec-fetch-mode: cors' \
    -H 'sec-fetch-site: same-site' \
    -H 'sec-gpc: 1' \
    -H 'sentry-trace: a6d504f0181b4ff5a3d13cbc834bda6d-ace80fd52421da41-0' \
    -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36' \
    -H 'x-client-device-id: 4c9345db-f073-4134-a4be-26d5a43ab0dd' \
    -H 'x-client-version: v63.0.34' \
    -H 'x-requested-with: XMLHttpRequest' \
    --data-raw "{\"tokens\":[\"$FILE_TOKEN\"]}"