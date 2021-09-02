echo "Enter IP:"
read ip

nmap -p- -T4 $ip > recon/openPorts.txt

echo 'OPEN Ports: -'
cat recon/openPorts.txt | grep open | cut -d "/" -f 1 | tee recon/openPorts.raw

cp /opt/PTScripts/recon.py .

nmap -sC -sV -T3 $(python3 recon.py) $ip | tee recon/nmap-extensive.scan
