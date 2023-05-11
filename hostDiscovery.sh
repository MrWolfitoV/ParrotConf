#!/bin/bash

for i in $(seq 1 254); do
	timeout 1 bash -c "ping -c 1 0.0.0.$i" &>/dev/null && echo "[+] Host 0.0.0.$i - ACTIVE" &
done; wait
