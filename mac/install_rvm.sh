#!/bin/bash
####################################
#
# Installs terraform in macOS 10.13.6 (17G65)
#                       Darwin 17.7.0 2018
# single user installation (recomended)
# ref.:https://rvm.io/rvm/install
#
####################################
#install mpapis public key used to verify installation package to ensure security.
#Note: hkp://keys.gnupg.net can sometimes timeout you may want to use different keyserver, for example:
#hkp://pgp.mit.edu
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
#Install RVM stable with ruby with jruby, rails and puma:
curl -sSL https://get.rvm.io | bash -s stable --ruby=jruby --gems=rails,puma --trace
#progress bar when downloading RVM / Rubies
echo progress-bar >> ~/.curlrc
#start using RVM
source ~/.rvm/scripts/rvm
#test If installation and configuration were successful
type rvm | head -n 1
#list current known ruby versions install
rvm list known
#install ruby
rvm install 2.5
rvm use 2.5 --default
