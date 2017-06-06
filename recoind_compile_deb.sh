#!/bin/bash 
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install build-essential g++ python-dev autotools-dev libicu-dev build-essential libbz2-dev git cmake gcc libboost-all-dev
cd /tmp
git clone https://github.com/ReCoin-i2cttl/recoin.git
cd recoin
make
useradd recoin
sudo cp init/recoind /etc/init.d
sudo chkconfig --add recoind
sudo service recoind start
sudo cd build/release/src
sudo cp connectivity_tool /usr/bin
sudo cp miner /usr/bin
sudo cp recoind /usr/bin
sudo cp simplewallet /usr/bin
sudo cp walletd /usr/bin
cd

