source config.sh
if [ "$( curl -s https://www.similacrecall.com/us/en/product-lookup.html | grep $lot | wc -l )" -ge 1 ]; then
    curl -X POST https://textbelt.com/text --data-urlencode phone=$phone --data-urlencode message="Possible recall on lot# $lot. Check https://www.similacrecall.com/us/en/product-lookup.html" -d key=$apikey >> api_$lot.log #send the text message
fi