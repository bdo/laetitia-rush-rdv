#!/usr/bin/env bash

LOGIN=laetitia.d-oncieu@epitech.eu
PATTERN='\[C++ - Piscine\]\[RUSH\] 1'
/bin/echo -n "Password: "
read -s PASSWORD
echo "••••"
curl \
    --cookie-jar cookies \
    --location \
    --form "login=$LOGIN" \
    --form "password=$PASSWORD" \
    --request POST \
    https://intra.epitech.eu \
    &>/dev/null
while : ; do
    curl --cookie cookies https://intra.epitech.eu/module/2017/B-CPP-300/PAR-3-1/ 2>/dev/null \
            | cut -c 6- \
            | grep "item rdv expandable.*$PATTERN"
    OPEN_OR_CLOSE=$( \
        curl --cookie cookies https://intra.epitech.eu/module/2017/B-CPP-300/PAR-3-1/ 2>/dev/null \
            | cut -c 6- \
            | grep "item rdv expandable.*$PATTERN" \
            | sed -E 's/.*expandable ([^"\]+).*/\1/'
    )
    echo $(date +%H:%M:%S) $OPEN_OR_CLOSE
    sleep 1
    [[ ${OPEN_OR_CLOSE} =~ "open" ]] && break
done