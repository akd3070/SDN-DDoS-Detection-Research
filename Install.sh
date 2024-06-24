#!/bin/bash

temp=0

# Check if Python 3 is installed
if command -v python3 &>/dev/null; then
    # Check Python 3 version
    python3_version=$(python3 --version 2>&1 | awk '{print $2}')
    if [[ "$python3_version" == *"3.6"* || "$python3_version" == *"3.8"* ]]; then
        echo "Python 3.6 or 3.8 is installed."
    else
        echo "Error: Python 3.6 or 3.8 is required."
        temp=1
        fi
fi

# Check if Python 3 is installed
if command -v python &>/dev/null; then
    # Check Python 3 version
    python3_version=$(python --version 2>&1 | awk '{print $2}')
    if [[ "$python3_version" == *"3.6"* || "$python3_version" == *"3.8"* ]]; then
        echo "Python 3.6 or 3.8 is installed."
    else
        echo "Error: Python 3.6 or 3.8 is required."
        temp=1
        fi
fi

# Check if Python 2 is installed
if command -v python2 &>/dev/null; then
    # Check Python 2 version
    python2_version=$(python2 --version 2>&1 | awk '{print $2}')
    if [[ "$python2_version" == *"2.7"* ]]; then
        echo "Python 2.7 Installed."
    else
        echo "Error: Python 2.7 is No."
        temp=1
        fi
fi

if command -v python &>/dev/null; then
    # Check Python 2 version
    python2_version=$(python --version 2>&1 | awk '{print $2}')
    if [[ "$python2_version" == *"2.7"* ]]; then
        echo "Python 2.7 Installed."
    else
        echo "Error: Python 2.7 not Installed."
        temp=1
        fi
fi
if [[ temp -eq 1 ]]; then
    exit 1
else
    echo "-------------------------------------------------------------------Good to go!!!!!!----------------------------------------------------------------------"
fi

# Update and upgrade the system
sudo apt-get update &&
sudo apt-get -y upgrade &&

# Install packages
echo "-----------------------------------------------------Installating Dependancies-------------------------------------------------------------------------------"
sudo apt-get -y install git &&
sudo apt-get -y install make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev &&
sudo apt-get -y install python3 &&
sudo apt-get -y install python3-pip &&
sudo apt-get -y install python-tk &&
sudo apt-get -y install python3-tk &&
sudo apt-get -y install openjdk-11-jdk &&
sudo apt-get -y install gradle &&
sudo apt-get -y install libcap-dev &&
sudo apt-get install xterm &&
echo "--------------------------------------------------------------------Dependancies Installed-------------------------------------------------------------------"

echo "----------------------------------------------------------------------Installating Mininet-------------------------------------------------------------------"
git clone https://github.com/mininet/mininet.git &&
cd mininet &&
git tag &&
git checkout -b cs244-spring-2012-final &&
cd util &&
sudo ./install.sh -a &&
cd .. &&
cd .. &&
echo "--------------------------------------------------------------------Installed Mininet.-----------------------------------------------------------------------"



echo " -----------------------------------------------------------------------Installing Ryu.----------------------------------------------------------------------"
git clone https://github.com/osrg/ryu.git &&
cd ryu && 
sudo pip3 install . &&
cd ..
echo "------------------------------------------------------------------------------Installed Ryu.-----------------------------------------------------------------"

echo "-----------------------------------------------------------Setting Up Settings For CICFlowMeter.-------------------------------------------------------------"
cd ~
cd /lib/jvm
chmod +x java-1.11.0-openjdk-amd64
chmod +x java-11-openjdk-amd64
echo "----------------------------------------------Sucessfully Installed All the tools And Its Requirements-------------------------------------------------------"
