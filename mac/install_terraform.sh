#!/bin/bash
####################################
#
# Installs terraform in macOS 10.13.6 (17G65)
#                       Darwin 17.7.0 2018
#
# ref.:https://www.terraform.io/downloads.html
#
####################################
# latest 0.11.8
# ./install_terraform.sh 0.11.8
wget https://releases.hashicorp.com/terraform/$1/terraform_$1_darwin_amd64.zip
unzip terraform_$1_darwin_amd64.zip
sudo mv terraform /usr/local/bin/
which terraform
terraform -v
rm -rf terraform_$1_darwin_amd64.zip
