#!/bin/bash
####################################
#
# Installs terraform in macOS 10.13.6 (17G65)
#                       Darwin 17.7.0 2018
#
# ref.:https://www.terraform.io/downloads.html
# requires xcode install https://itunes.apple.com/us/app/xcode/
#
####################################
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install tree
brew install git
brew install wget
brew install gpg
brew install mysql
brew install git-crypt
brew update
brew tap caskroom/cask
brew tap caskroom/versions
