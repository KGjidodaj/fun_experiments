#!/bin/bash

apikey=$(cat .env)

python3 abuseip_scan.py $apikey


