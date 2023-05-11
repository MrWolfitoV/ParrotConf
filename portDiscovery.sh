#!/bin/bash

for i in $(seq 1 254); do
        for port in 21 22 80 443 445 8080; do
                timeout 1 bash -c "echo '' > /dev/tcp/0.0.0.$i/$port" &>/dev/null && echo "[+] Host 0.0.0.$i - PORT $port - OPEN" &
        done
done; wait
