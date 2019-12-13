#!/bin/bash
sudo apt-get update && sudo apt-get -y upgrade
sudo apt autoremove
wget https://github.com/zcoinofficial/zcoin/releases/download/v0.13.8.9/zcoin-0.13.8.9-linux64.tar.gz
cd ~/zcoin-0.13.8/bin
./zcoin-cli stop
cd ~
rm -rv zcoin-0.13.8
tar xvzf zcoin-0.13.8.9-linux64.tar.gz
sudo reboot now

~/zcoin-0.13.8/bin/zcoin-cli znode status
~/zcoin-0.13.8/bin/zcoin-cli znsync status
~/zcoin-0.13.8/bin/zcoin-cli getinfo

~/zcoin-0.13.8/bin/zcoind -daemon
