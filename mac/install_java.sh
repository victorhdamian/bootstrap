#!/bin/bash
####################################
#
# Installs terraform in macOS 10.13.6 (17G65)
#                       Darwin 17.7.0 2018
# ref.:
#       https://cask.readthedocs.io/en/latest/guide/installation.html
#       http://www.jenv.be/ https://github.com/gcuisinier/jenv
#
####################################
#Requires brew:
brew update
brew upgrade brew-cask-completion
brew cleanup
brew cask cleanup
brew tap caskroom/cask
brew tap caskroom/versions
brew install brew-cask-completion
brew install jenv
#set jenv home and init
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.profile
echo 'eval "$(jenv init -)"' >> ~/.profile
# shows jenv plugins
#jenv plugins
#jenv enable-plugin maven
#reload shell
exec $SHELL -l
#install Java8 and the latest java
brew cask install java8
brew cask install java
#ls -lrt /Library/Java/JavaVirtualMachines/
# adds java8 and latest java to jenv
for d in /Library/Java/JavaVirtualMachines/*/*/Home ; do (jenv add "$d/"); done
# List managed JDKs
jenv versions
# Configure global version
#jenv global oracle64-1.8.0.181
# Configure local version (per directory)
#jenv local oracle64-1.6.0.39
# man java_home
#/usr/libexec/java_home -V
printenv
