#!/bin/bash

# Update and upgrade the system
sudo apt-get update &&
sudo apt-get -y upgrade &&

# Install packages
echo "Installating Dependancies"
sudo apt-get -y install git &&
sudo apt-get -y install make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev &&
sudo apt-get -y install python3 &&
sudo apt-get -y install python-tk &&
sudo apt-get -y install python3-tk &&
sudo apt-get -y install openjdk-11-jdk &&
sudo apt-get -y install gradle &&
sudo apt-get -y install libcap-dev &&
echo "Dependancies Installed"

echo "Installating Mininet"
git clone https://github.com/mininet/mininet.git &&
cd mininet &&
git tag &&
git checkout -b cs244-spring-2012-final &&
cd util &&
sudo ./install.sh -a &&
cd .. &&
cd .. &&
echo "Installed Mininet." &&

echo "Installing Ryu." &&
git clone https://github.com/osrg/ryu.git &&
cd ryu && 
sudo pip install . &&
cd ..
echo "Installed Ryu." &&

echo "Installing CICFlowMeter" &&

