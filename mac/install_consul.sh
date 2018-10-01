#!/bin/bash
####################################
#
# Installs consul in macOS 10.13.6 (17G65)
#                       Darwin 17.7.0 2018
#
# ref.:https://www.consul.io/downloads.html
#
####################################
# latest 1.2.3
# ./install_consul.sh 1.2.3
wget https://releases.hashicorp.com/consul/$1/consul_$1_darwin_amd64.zip
unzip consul_$1_darwin_amd64.zip
sudo mv consul /usr/local/bin/
which consul
consul -v
rm -rf consul_$1_darwin_amd64.zip
