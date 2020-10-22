#!/bin/bash
KONGA_URL=$1
curl --location --request POST 'https://localhost8444:/services' --header 'Content-Type: application/json' \
--data-raw '{"url":"http://$KONGA_URL","name":"KONGA-UI-KONG-MANAGER"}'
curl --location --request POST 'https://localhost8444:/routes' --header 'Content-Type: application/json' \
--data-raw '{"name":"Konga","protocols":["http","https"],"methods":["GET","POST","PUT","DELETE","OPTIONS","PATCH"],"paths":["/","/register"],"strip_path":false,"service":{"name":"KONGA-UI-KONG-MANAGER"}}'