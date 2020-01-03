#!/bin/bash
sudo apt-get update && sudo apt-get -y upgrade
sudo apt -y autoremove
wget https://github.com/zcoinofficial/zcoin/releases/download/v0.13.8.10/zcoin-0.13.8.10-linux64.tar.gz
~/zcoin-0.13.8/bin/zcoin-cli stop
rm -rv zcoin-0.13.8
tar xvzf zcoin-0.13.8.10-linux64.tar.gz
sudo reboot now

~/zcoin-0.13.8/bin/zcoin-cli znode status
~/zcoin-0.13.8/bin/zcoin-cli znsync status
~/zcoin-0.13.8/bin/zcoin-cli getinfo

~/zcoin-0.13.8/bin/zcoind -daemon
