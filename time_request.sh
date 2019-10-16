#!/bin/bash

# curl -f -w "@curl-format.txt" -o /dev/null -K destinos  | sed "s/##(date)##/${Agora}/g" - >>resultado.json

time for counter in $(seq 1 1000); do 
    Agora=$(date)
    curl --trace-time -# -f -w "@curl-format.txt" -o /dev/null -K destinos  | sed "s/##(date)##/${Agora}/g" - >>resultado.json
done
