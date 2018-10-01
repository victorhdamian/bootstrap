#!/bin/bash
####################################
#
# Installs terraform in macOS 10.13.6 (17G65)
#                       Darwin 17.7.0 2018
#
# ref.:https://www.packer.io/downloads.html
#
####################################
# latest 1.3.1
# ./install_packer.sh 1.3.1
wget https://releases.hashicorp.com/packer/$1/packer_$1_darwin_amd64.zip
unzip packer_$1_darwin_amd64.zip
sudo mv packer /usr/local/bin/
which packer
packer -v
rm -rf packer_$1_darwin_amd64.zip
