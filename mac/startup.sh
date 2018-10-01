#!/bin/bash
####################################
#
# bootstrap for macOS 10.13.6 (17G65)
#                     Darwin 17.7.0 2018
#
####################################
./install_rvm.sh
./install_brew.sh
./install_java.sh
./install_python.sh
./install_terraform.sh 0.11.8
./install_packer.sh 1.3.1
./install_vault.sh 0.11.1
./install_consul.sh 1.2.3
./install_gcpsdk.sh
