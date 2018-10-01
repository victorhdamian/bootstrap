#!/bin/bash
####################################
#
# Installs vault in macOS 10.13.6 (17G65)
#                       Darwin 17.7.0 2018
#
# ref.:https://www.vaultproject.io/downloads.html
#
####################################
# latest 0.11.1
# ./install_vault.sh 0.11.1
wget https://releases.hashicorp.com/vault/$1/vault_$1_darwin_amd64.zip
unzip vault_$1_darwin_amd64.zip
sudo mv vault /usr/local/bin/
which vault
vault -v
rm -rf vault_$1_darwin_amd64.zip
