#!/bin/bash
echo "=================================================="
echo -e "\033[0;35m"
echo " ███╗░░░███╗░█████╗░██████╗░██╗░█████╗░  ███╗░░██╗░█████╗░██████╗░███████╗░██████╗ ";
echo " ████╗░████║██╔══██╗██╔══██╗██║██╔══██╗  ████╗░██║██╔══██╗██╔══██╗██╔════╝██╔════╝ ";
echo " ██╔████╔██║███████║██████╔╝██║██║░░██║  ██╔██╗██║██║░░██║██║░░██║█████╗░░╚█████╗░ ";
echo " ██║╚██╔╝██║██╔══██║██╔══██╗╚═╝██║░░██║  ██║╚████║██║░░██║██║░░██║██╔══╝░░░╚═══██╗ ";
echo " ██║░╚═╝░██║██║░░██║██║░░██║██╗╚█████╔╝  ██║░╚███║╚█████╔╝██████╔╝███████╗██████╔╝ ";
echo " ╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░╚════╝░  ╚═╝░░╚══╝░╚════╝░╚═════╝░╚══════╝╚═════╝░ ";
echo -e "\e[0m"
echo "=================================================="
cd ~/pathfinder/py
git fetch &>/dev/null
git checkout v0.2.1-alpha &>/dev/null
python3 -m venv .venv &>/dev/null
source .venv/bin/activate &>/dev/null
PIP_REQUIRE_VIRTUALENV=true pip install --upgrade pip &>/dev/null
PIP_REQUIRE_VIRTUALENV=true pip install -r requirements-dev.txt &>/dev/null
cargo build --release --bin pathfinder &>/dev/null
sleep 2
source $HOME/.bash_profile &>/dev/null
systemctl restart starknet
echo "Нода обновлена"
echo "-----------------------------------------------------------------------------"
