#!/usr/bin/env bash
#
# personal script to install all-in-one sing-box
# 1. install preq. soft: git, go, etc
# 2. install acme, get certs for predefined domain
# 3. install & enable sing-box
# 4. copy config
# 5. restart sing-box

set -e

echo -e "Installing pre..."
apt install unzip git curl wget nano
echo -e "Installing sing-box..."
git clone https://github.com/denniszlei/sing-box
cd sing-box
./release/local/install_go.sh # skip if you have golang already installed
./release/local/install.sh
./release/local/enable.sh
echo -e "OK"
