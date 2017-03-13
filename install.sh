#!/bin/bash
sudo apt-get install -y libboost-dev libpcap-dev libboost-thread-dev libboost-system-dev
wget https://github.com/aguinet/usbtop/archive/master.zip
unzip master.zip
cd usbtop-master/
mkdir build; cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make && sudo make install
sudo modprobe usbmon
