#!/bin/bash
chmod +x elhack.sh
chmod +x src/autpn.sh
chmod +x src/nm.sh
chmod +x src/pay.sh
chmod +x src/power.sh

mkdir /opt/elhack_sploit
mkdir /opt/elhack_sploit/src
cp elhack.sh -t /opt/elhack_sploit
cp src/autpn.sh -t /opt/elhack_sploit/src
cp src/nm.sh -t /opt/elhack_sploit/src
cp src/pay.sh -t /opt/elhack_sploit/src
cp src/power.sh -t /opt/elhack_sploit/src
clear
echo "/opt/elhack_sploit"
echo "### Done ###"
