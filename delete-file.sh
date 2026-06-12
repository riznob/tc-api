#!/bin/bash

FILE_TOKEN="$1"

curl 'https://api.tenantcloud.com/v2/filemanager/destroy' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H "authorization: Bearer $BEARER_TOKEN" \
  -H 'baggage: sentry-environment=production,sentry-release=v65.4.3,sentry-public_key=9b18938dd84f41b5931cdacc3d268d22,sentry-trace_id=bd72824128db4b4398fe06aa9bcc4065' \
  -H 'content-type: application/json' \
  -b '_vwo_uuid_v2=D52E10E74774BB268C2ECBC7F13E4EF79|120eca2b70abde94d69dec0dc0cadc14; _vwo_uuid=D52E10E74774BB268C2ECBC7F13E4EF79; kryptonit3-counter=5TaoBUrj1mpupKbKXgxgfe1LhaRz8UYy3YfkHDzfXXAlzmuFaAUhiGcsV5ny2aATtAlQg1P0lLAd88ho; _CEFT=Q%3D%3D%3D; _gcl_au=1.1.672344821.1779469059; _ga=GA1.1.1302363350.1779469060; hubspotutk=f643e295a6bb05abf4d06515d0c498a8; intercom-device-id-w95cgao1=fad2a6f1-41b0-46cb-b0e4-c81e14ca6df3; _vis_opt_s=3%7C; _vis_opt_test_cookie=1; cebs=1; __hssrc=1; fs_uid=#QK75H#7e92d152-5321-48d0-afb9-07e83f056af0:7e6ccfd7-4636-4629-99ec-974c1c11c3f0:1781136775413::1#6e6c59b9##/1812672788; _vwo_ds=3%3Aa_0%2Ct_0%3A0%241779469056%3A91.08579656%3A%3A%3A%3A%2C%3A1781283266%3A1781147209%3A11; _ce.clock_data=0%2C107.13.231.79%2C1%2Cf304dd2f5ddcfa082d07ec9ab4d3dfcf%2CChrome%2CUS; tc_session=wul1oGHa9ctFaE1TWzvsF1qvhyrvCUyz4Z9IbuAL; __hstc=72016524.f643e295a6bb05abf4d06515d0c498a8.1779469077785.1781147215954.1781283301143.9; _clck=1ez3bdd%5E2%5Eg6u%5E0%5E2333; _ce.seg.targeting=NoRgNA3gRA7FBc0B2BXAtgIwKYCcEAYwoBjFHHLJYgTwSgFUBlAESgF82xgoMBWANgAsAQxAgYAWgAcgjFImzhAJmlSAZgBMJG_DN74sw_jCWCoRAMwWYatbpVSAnBowLej-RjGCJFrBZBhQSUpdXw1KABdMFQAG1iYlHjIoA%3D%3D%3D; tc_refresh_token=def50200ffeb6bc3a88d25caa6630d868215884563cc97bfb8167ca24e91320cc8d8b96006372ed29c783590184510d7fa251129e70c4066578f7e23582e0b609a37f2b32073edf0aa65abf9784996ba93497ac20146bd30eed86663098ed1e2491fe163ad74b362eb64eb410da3fa99b004a8d93998a32e3d41ddfdc278cb4415793e919379ca458e2515c3a8f3444e881a01c4a85e7b3dd9995f8c6d823ed5be096b6937cbce5f2a4b7553048363864d88147f54ab8b50b1c956e76490dc0363c497ce38da6869efd53b156a1aa9337d2328f273fa913c2e8cdc95d96b11899846cb1daf8d6e3230372af21f263b5f817964a5c2ce0286bab4bfe7615c69f444e0d02484107d7c02a5696006a053d696819f9c2326c18af75ef766d1bd5f98045497b67b044429b2acc9693ebd91494a78fbc4ed0ff6b82a6ea0a65b3e13b23019b1234a331e25b8aaad0a98ee80a254de8f48fc1d2b84b74d2ceb0efbe0d40a801531d82a190a85b031743288fdf032; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IlBWTG1XYWxKVXFROU1Jb21BQVlFZVE9PSIsInZhbHVlIjoiZnhjWE13VlJ6Z3V1KzYxRkdhQ21hR3ArdnV1UWxzMklyQlJaMkJCaXB2a0tMdjFGUUlGam01a2RWQlJ4TXh2MUxXM3VkM1pmUm1WSHlzdGZmd1NGY1JMN2ZnRVZCdXRPUmVqSXVzNUp6bjZhZnEwTldxYzdwcE9UaXc3MzAvQXdxemhHUkpRSHJaYzRKcGNMRHRyc1BFVkI4Vm9SaS9yV1JmVGdJeW43Z012dXgvdG50am5kVTV4VkwyVTh6M042Ty9MbUtzelM1Vi81QzdwbEFjVUg3VDlOdnlEd1orRk4wT3BsK0cvalZUeEJDV01sUjBuL3hTbVpONkpaVW0yTSIsIm1hYyI6ImZiMTBhYzZhYjY3YTBjYmMxYzgyMDAyNDlmMGQxNmU2NWEzMTQ3YzhmNzcwMjZhNGVkYmQ1ZDkxOWRhYjc1YjEiLCJ0YWciOiIifQ%3D%3D; _uetsid=7383e1d0667f11f1ae183713c1f057bd; _uetvid=578692f055ff11f1ac559584c8103d6a; __hssc=72016524.68.1781283301143.1781283301143.1781283301143.9; intercom-session-w95cgao1=Sy9NNVBZOURpQndqUjN2QXJPdGhpZjNsV0x3WTVJZWYvUzdzcFNZWklTU0dtOFNHVW5NQ2F6ZkJmUnRtcVZRWCtVNlR0cFd0LytUTmNPeUxGRUlxcWhHWUxLaVd6dXJLRVBpZFZoRS9jMVZXTFZRczZITmpwWmxFM3N1M1FjRWptelp0eUF4RlVucXNSWjRDUTRXbThwTk04T2Y0TXRsL3psaU9ubWFHa3VicG5UYzhJMnRCaDdDYlkrWjB5VkwwbE51VklxRk4wUjErOVlOZmhtUWhLdz09LS1NQVgrcU9YKy9UUjdZZzdzQzhMVGV3PT0=--771afedf79e5dfbef48b6bd7243bb9225752ba9c; cebsp_=136; _vwo_sn=1814210%3A192%3A%3A%3A%3A%3A1277; _clsk=1i30j8p%5E1781285848161%5E118%5E1%5Eo.clarity.ms%2Fcollect; _ga_NFQ0WJ83PM=GS2.1.s1781283299$o13$g1$t1781285848$j60$l0$h388228200; _ce.s=v~3806490f19cbc33921ba634df77a255319155818~vir~returning~lva~1781285818451~vpv~2~v11ls~9d078260-6683-11f1-abe0-4165fb8ce18a~gtrk.la~mqb7mdna~v11.cs~176150~v11.s~9d078260-6683-11f1-abe0-4165fb8ce18a~v11.vs~3806490f19cbc33921ba634df77a255319155818~v11.sla~1781285088648~lcw~1781285880214' \
  -H 'origin: https://app.tenantcloud.com' \
  -H 'priority: u=1, i' \
  -H 'referer: https://app.tenantcloud.com/' \
  -H 'sec-ch-ua: "Chromium";v="148", "Google Chrome";v="148", "Not/A)Brand";v="99"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "macOS"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-site' \
  -H 'sentry-trace: bd72824128db4b4398fe06aa9bcc4065-934934563143a958' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36' \
  -H 'x-batch-id: 6f032277-96db-42ee-a4d9-8ca26d54d2da' \
  -H 'x-client-device-id: 7a0b245d-9348-4574-9551-50d2d0690006' \
  -H 'x-client-version: v65.4.3' \
  -H 'x-requested-with: XMLHttpRequest' \
  --data-raw "{\"tokens\":[\"$FILE_TOKEN\"]}"
