echo "Enter IP:"
read ip

echo "-------Starting PortSweep------"

nmap -p- -T4 $ip > recon/openPorts.txt
echo
echo '-----------OPEN Ports-----------'

cat recon/openPorts.txt | grep open | cut -d "/" -f 1 | tee recon/openPorts.raw
echo
echo 'Ports:'
$(python3 recon.py)
echo
echo "-----------Running Extenisive Nmap--------------"
echo "nmap -sC -sV -T3 $(python3 recon.py) $ip | tee recon/nmap-extensive.scan"
nmap -sC -sV -T3 $(python3 recon.py) $ip | tee recon/nmap-extensive.scan
