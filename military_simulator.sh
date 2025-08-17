#!/bin/bash

# Barvy
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m'

# Vymazání obrazovky
clear

# ASCII military header
echo -e "${RED}"
echo "=================================================================="
echo "    ███╗   ███╗██╗██╗     ██╗████████╗██████╗ ██╗███████╗██████╗   "
echo "    ████╗ ████║██║██║     ██║╚══██╔══╝██╔══██╗██║██╔════╝██╔══██╗  "
echo "    ██╔████╔██║██║██║     ██║   ██║   ██████╔╝██║█████╗  ██████╔╝  "
echo "    ██║╚██╔╝██║██║██║     ██║   ██║   ██╔═══╝ ██║██╔══╝  ██╔══██╗  "
echo "    ██║ ╚═╝ ██║██║███████╗██║   ██║   ██║     ██║███████╗██║  ██║  "
echo "    ╚═╝     ╚═╝╚═╝╚══════╝╚═╝   ╚═╝   ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝  "
echo "=================================================================="
echo -e "${NC}"
sleep 2

# Zahájení inicializace
echo -e "${CYAN}[SYSTEM] Initializing Global Defense AI Core...${NC}"
sleep 1
echo -e "${BLUE}[*] Booting classified subsystems...${NC}"
sleep 0.8
echo -e "${BLUE}[*] Mounting satellite control interfaces...${NC}"
sleep 0.8
echo -e "${BLUE}[*] Calibrating strategic threat maps...${NC}"
sleep 0.8
echo -e "${GREEN}[OK]${NC} Defense grid interface loaded."
sleep 0.5
echo -e "${GREEN}[OK]${NC} Neural target prediction module active."
sleep 0.5
echo -e "${GREEN}[OK]${NC} Secure channels encrypted (AES-4096)."
sleep 0.5
echo -e "${YELLOW}[SECURE MODE] Clearance Level: ${RED}OMEGA-RED${NC}"

echo ""
sleep 1.5
echo -e "${CYAN}>>> GLOBAL MILITARY AI SYSTEM ONLINE <<<${NC}"
echo ""

# Funkce pro generování falešných hlášení
generate_log() {
    timestamp=$(date +%T)
    message=$(shuf -e \
        "Scanning for unauthorized activity..." \
        "Deploying recon satellites..." \
        "Analyzing nuclear signatures..." \
        "Monitoring geopolitical shifts..." \
        "Syncing with NATO command..." \
        "Intercepting encrypted broadcasts..." \
        "Real-time UAV telemetry stream OK." \
        "Upstream quantum node handshake verified." \
        "No-fly zone integrity confirmed." \
        "Analyzing AI behavioral models..." \
        "Sensor calibration stable." \
        "Signal triangulation complete." \
        -n 1)
    echo -e "${GRAY}[${timestamp}] ${message}${NC}"
}

generate_alert() {
    timestamp=$(date +%T)
    alert=$(shuf -e \
        "INTRUSION DETECTED at Arctic Defense Grid." \
        "MISSILE TRAJECTORY IDENTIFIED - ORIGIN: UNKNOWN." \
        "DRONE LOST CONTACT over hostile zone." \
        "UNAUTHORIZED LAUNCH CODE ATTEMPT BLOCKED." \
        "SURVEILLANCE ARRAY COMPROMISED - Sector 4B." \
        "CRITICAL: Satellite node offline." \
        -n 1)
    echo -e "${RED}[${timestamp}] ALERT: ${alert}${NC}"
}

generate_action() {
    timestamp=$(date +%T)
    action=$(shuf -e \
        "Engaging automated countermeasures..." \
        "Activating orbital shield protocol..." \
        "Rebooting drone swarm AI node..." \
        "Redirecting surveillance satellite..." \
        "Pushing new behavioral threat signatures..." \
        "Uploading emergency fallback AI profile..." \
        -n 1)
    echo -e "${BLUE}[${timestamp}] SYSTEM ACTION: ${action}${NC}"
}

generate_status() {
    timestamp=$(date +%T)
    echo -e "${GREEN}[${timestamp}] SYSTEM STATUS: STABLE. All operations nominal.${NC}"
}

# Hlavní smyčka
while true; do
    generate_log

    # Pravděpodobnost alertu
    if (( RANDOM % 10 == 0 )); then
        generate_alert
    fi

    # Občasný zásah AI
    if (( RANDOM % 12 == 0 )); then
        generate_action
    fi

    # Občasná status zpráva
    if (( RANDOM % 7 == 0 )); then
        generate_status
    fi

    sleep 2
done

