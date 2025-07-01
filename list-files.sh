#!/bin/bash
### Get list of files, 1 page of 200

curl 'https://api.tenantcloud.com/files?page=1&take=200&filter%5Bproperty_id%5D%5B0%5D=68214&fields%5Bfile%5D=ext%2Cprocessing%2Cbase_name%2Csize%2Ccreated_at%2Ctoken%2Csizes%2Cfile_url%2Cname%2Cis_image%2Csender_id&fields%5Bfile_rules%5D=destroy&include=rules%2Cpreview' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H "authorization: Bearer $BEARER_TOKEN" \
  -H 'baggage: sentry-environment=production,sentry-release=v63.0.34,sentry-public_key=9b18938dd84f41b5931cdacc3d268d22,sentry-trace_id=77bc0c94261e4d62a516e5c3da8c3fe6,sentry-sample_rate=0.01,sentry-sampled=false' \
  -b 'kryptonit3-counter=anXXfEWmbnsrCzE9ilug7mKU8o2OqRcHkohL4wH8csbHaJdEULZw1IZVI3axV3qaiTxvBRjC9oT49xf7; flaretrk=%2eyJmaXJzdFZpc2l0RGF0ZSI6IlR1ZSwgMDEgSnVsIDIwMjUgMDk6MDg6MDUgR01UIiwiY29udmVyc2lvbmRheXMiOiIwIiwic3VibWl0UGFnZSI6Imh0dHBzOi8vc3VwcG9ydC50ZW5hbnRjbG91ZC5jb20vZmFxIiwicmVmZXJyZXJVUkwiOiIiLCJsYW5kaW5nVVJMIjoiaHR0cHM6Ly9zdXBwb3J0LnRlbmFudGNsb3VkLmNvbS8iLCJsYXN0UmVmZXJyZXJVUkwiOiIiLCJsYXN0TGFuZGluZ1VSTCI6Imh0dHBzOi8vc3VwcG9ydC50ZW5hbnRjbG91ZC5jb20vIiwibGFzdFZpZXdlZFVSTCI6IiIsImRyaWxsRGF0YSI6eyJjaGFubmVsIjoiRGlyZWN0IHRyYWZmaWMiLCJkcmlsbERvd24xIjoiTm9uZSIsImRyaWxsRG93bjIiOiJOb25lIiwiZHJpbGxEb3duMyI6Ik5vbmUiLCJkcmlsbERvd240IjoiTm9uZSJ9LCJsYXN0RHJpbGxEYXRhIjp7ImNoYW5uZWwiOiJEaXJlY3QgdHJhZmZpYyIsImRyaWxsRG93bjEiOiJOb25lIiwiZHJpbGxEb3duMiI6Ik5vbmUiLCJkcmlsbERvd24zIjoiTm9uZSIsImRyaWxsRG93bjQiOiJOb25lIn0sImdjbGlkIjoiIiwibXNjbGtpZCI6IiIsImZiY2xpZCI6IiIsImdicmFpZCI6IiIsIndicmFpZCI6IiIsImlkIjoiIiwidmlzaXRzIjoxLCJsYXN0dmlzaXQiOjE3NTEzNjA4OTc1MzMsImN1c3RvbUZpZWxkcyI6e30sImxhbmRpbmdfdXJsIjoiaHR0cHM6Ly9zdXBwb3J0LnRlbmFudGNsb3VkLmNvbS8iLCJ0ZXN0X2RhdGEiOiJGcm9tIHJlZmVycmVyLCBvcmlnaW5hbCBVUkw6IGh0dHBzOi8vc3VwcG9ydC50ZW5hbnRjbG91ZC5jb20vIiwibGFuZGluZ19wYWdlX2dyb3VwIjoiLyJ9; tc_session=jxo2Foa18USZonKVJkRcK5QNdSIsuFvvNX5TQr85; tc_refresh_token=def50200148faac9f3ef0b38470649c57143fd8da54af8e477b4af198e8e2b07eb9b99094c3252fef2070441d0b684959af099a1356a5196d0ab5f74e1cebcb4fed7489880b91ce0549f20bdca7826533c63a07948972ac1733930ae21b35d113d01df5974b4849f6ba2894feedcd26757ccc6f6708b6e18ed0f538c4c3ca7258163eab13f6d6e1461797de4ea442208a05ebfd1fb5c2f0f431e2e69d01703603df935b7f28d25414f9e5740f2037fbcb86455e175b8141903677e79eea8f68533ee1e62924781dc957ce153c9cd1db809331b32c152735be5a75e327690e81f317faccbe0d9bb2bc9ab6200e77d897d720af3092ccaf7868d7c5444f8a500d2873fa49d974e6e09cd57a88c9996933c4ccc271da130d7c302ac4fba108f48eba9cd206932d0195f97922b0b9bcc4be67be0968d2309a76f3d57e14979db6e914c4b938d5f82b212e6562b4bc59cb737e8dddf073c63ab14dfda9503420935ffadadd1e0e1665b4a410bd08c5a6f68c925; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkE5eW5tVmVCNjhRV0VENUc3OWlZL3c9PSIsInZhbHVlIjoiclljWU1kckdZL3IzbnFnL2NLdks1SVBvVzFvRURpTW9KQUsvVFBnelk1U1o3bXVkNXNEeWpCRVBVdmpBd2hCSWVmblJVNVhEdUJ6aHNzbmpDRlo0OVh5cCtHWjk2ZEtkTVh5c0hTbnpJQVNCYkF5cjRyTGF1aFlxanExM2w4V3RTRVQ2SDNmT2UwbUI4bU94S2tJR0l0OWJZaE9VNVhoY09pcEZPTmxLczlzbzJDWnJxSUpUc0lFelFSOGlPUEY4a21tK20xYmUrK0ZIWFB2eEJzMFl1LzVtQlQ5T1FwSXkxejZNeDVBVWl6dmZ2OVNIM2ZTSitncDlsUWR2amxkaiIsIm1hYyI6ImIyNjZjYTk3YzZkMTIxYmFhMTYwMmYxYjk1ZTlkMGNlNGEzZDcwOTIyMGY2MzQ5YjI3NGY4NWQ3YmFlZGMzMTkiLCJ0YWciOiIifQ%3D%3D' \
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
  -H 'sentry-trace: 77bc0c94261e4d62a516e5c3da8c3fe6-877a1a1deb7b24be-0' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36' \
  -H 'x-client-device-id: 4c9345db-f073-4134-a4be-26d5a43ab0dd' \
  -H 'x-client-version: v63.0.34' \
  -H 'x-requested-with: XMLHttpRequest' > files.json

# pretty format files.json overwrite
jq . files.json > files.json.tmp && mv files.json.tmp files.json