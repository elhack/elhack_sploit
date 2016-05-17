#!bin/bash
clear
echo "##########################
      ### Elhack Sploit      ###
      ### code :Hamza.elhack ###
      ### fb:fb.me/elhack.dz ###
      ##########################
"
echo
echo "#########################"
echo "## Nmap Easy for you  ###"
echo "#########################"

read -p " please enter target ip : " ip
echo
echo "
     1.Scan for open ports
     2.Identify the Operating System 
     3.TCP Syn and UDP Scan
     4.TCP SYN and UDP scan for all ports
     5.TCP Connect Scan
     6.Aggressively Scan Hosts
     7.Fast Scan
     8.Verbose
     9.Return back to the main menu.
     0.Exit
"
read nm

if [[ $nm == 1 ]]; then
nmap $ip/24
read -p "press any key to continue"
bash src/nm.sh
elif [[ $nm == 2 ]]; then
nmap -O $ip
read -p "press any key to continue"
bash src/nm.sh
elif [[ $nm == 3 ]]; then
nmap -sS -sU -PN $ip
read -p "press any key to continue"
bash src/nm.sh
elif [[ $nm == 4 ]]; then
nmap -sS -sU -PN -p 1-65535 $ip
read -p "press any key to continue"
clear
bash src/nm.sh
elif [[ $nm == 5 ]]; then
nmap -sT $ip
read -p "press any key to continue"
clear
bash src/nm.sh
elif [[ $nm == 6 ]]; then
nmap -T4 -A $ip
read -p "press any key to continue"
clear
bash src/nm.sh
elif [[ $nm == 7 ]]; then
nmap -T4 -F $ip
read -p "press any key to continue"
clear
bash src/nm.sh
elif [[ $nm == 8 ]]; then
nmap -T4 -A -v $ip
read -p "press any key to continue"
clear
bash src/nm.sh
elif [[ $nm == 9 ]]; then

clear
bash elhack.sh
elif [[ $nm == 0 ]]; then
clear
exit

else
bash src/nm.sh
fi
