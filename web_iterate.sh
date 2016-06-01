#!/bin/bash

while read web; do
    setsid wget --span-hosts --recursive --trust-server-names -N -c -l0 --convert-links --domains $web -H $web >/dev/null 2>&1 < /dev/null &
done <web.txt
