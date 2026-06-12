#!/bin/bash

source .env

apikey="$KEY"

output=$(python3 abuseip_scan.py $apikey)

score=$(echo "$output" | awk '{print $1}')

if [[ "$score" -gt 50 ]];then
        curl -d "content=Warning(score,ip): $output" "$URL"
fi
