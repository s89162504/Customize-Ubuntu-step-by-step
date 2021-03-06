#!/bin/bash
sudo apt-get install -y gcc-multilib
sudo apt-get install -y python2.7 python-pip python-dev git libssl-dev
sudo pip install --upgrade pwntools
sudo apt-get install -y nasm
sudo apt-get install -y nmap
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
cd ~/
git clone https://github.com/Z3Prover/z3
cd z3
python scripts/mk_make.py
cd build
make
sudo make install
sudo apt-get install -y python-dev python-pip libffi-dev build-essential virtualenvwrapper
sudo pip install angr
sudo apt-get install -y libcapstone3 libcapstone-dev
sudo apt-get install -y libboost-all-dev
cd ~/
git clone https://github.com/JonathanSalwan/Triton.git
cd Triton
mkdir build
cd build
cmake ..
sudo make -j2 install

