#!/bin/bash
COUNTER=0
echo ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
,,,,,  ,,  .,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
,,,,`  `    .,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
,,, , `    `,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
,,   ,     ,  ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
,,    ,  .`,  .,,,,,     ,, ,,,  ,, ,,,,, .,,,, ,,,,,,,,,,  ,,,   ,,, ,,, ,,  ,, ,,     ,,    ,,,,   ,,, ,,,,, ,,  ,, ,,,,,,,
,,`   ,,,,  , ,,,,,, ,,,,,, ,,,  ., ,,,,`` ,,,, ,,,,,,,, ,,,,, ,,, ,, ,,, ,,  ., ,,,, ,,,, ,,, ,, ,,, ,, ,,,,, ,,  ., ,,,,,,,
,,,`  `,,,   ,,,,,,, ,,,,,, ,,, , , ,,,, , ,,,, ,,,,,,,, ,,,,, ,,, ,, ,,, ,, , , ,,,, ,,,, ,,, ,, ,,, ,, ,,,,, ,, , , ,,,,,,,
,,  ` ,,,,    ,,,,,,    ,,, ,,, ,`  ,,,`    ,,, ,,,,,,,, ,,,,, ,,, ,, ,,, ,, ,`  ,,,, ,,,, ,,, ,, ,,, ,, ,, ,, ,, ,`  ,,,,,,,
,,  ` .  `,   `,,,,, ,,,,,, ,,, ,,  ,,, ``` ,,, ,,,,,,,, ,,,,, ,,, ,, ,,, ,, ,,  ,,,, ,,,, ,,, ,, ,,, ,, , , , ,, ,,  ,,,,,,,
,,  `.    ,,  ,,,,,, ,,,,,, ,,, ,,, ,,. ,,,` ,,    ,,,,,,   ,,,   ,,,,   ,,, ,,, ,,,, ,,,,    ,,,,   ,,,, .,, ,,, ,,, ,,,,,,,
,,,,`    .  `,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
,,,,    .   ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
,,,,,  ,,` ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,'
echo 'Type referal code, then hit ENTER'
read REFER
echo 'Running; CTRL-C to stop.'
while [  $COUNTER -gt -1 ]; do
    DATE=$(date +"%s")
    EMAIL=$(md5 -q -s $DATE+$RANDOM)
    curl -s 'https://apply.getfinal.com/signups' -H 'Origin: https://www.getfinal.com' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.8' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Cache-Control: max-age=0' -H "Referer: https://www.getfinal.com/?ref=$REFER" -H 'Connection: keep-alive' --data "signup%5Bemail%5D=$EMAIL%40gmail.com&signup%5Bshare_hash%5D=$REFER&subscribe=" --compressed 2> /dev/null
    echo ""
    let COUNTER=COUNTER+1
done
