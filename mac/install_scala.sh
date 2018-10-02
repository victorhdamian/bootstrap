#!/bin/bash
####################################
#
# Installs rvm in macOS 10.13.6 (17G65)
#                       Darwin 17.7.0 2018
# ref.:http://zouzias.github.io/2015/08/30/Multiple-Scala-version-onmac/
#
#
####################################
brew update
brew install scala
#To verify and check the installed Scala version
brew info scala scala

#To install a different version of Scala, i.e., Scala 2.10, do the following
# checkout to the history version of scala.rb
cd /path/to/homebrew (default is /usr/local)
git checkout d64edec425df44918c58b6b021ffef2628242248 Library/Formula/scala.rb
brew unlink scala   # In case you have alreadly scala 2.11+ scala installed
brew info scala     # you will see the 2.10 version
brew install scala  # Install scala 2.10.4
# after install, turn back to the master version
git checkout master Library/Formula/scala.rb
# install both 2.10 & 2.11,
# brew switch can easily switch to any specific version
brew switch scala 2.10
brew switch scala 2.11
Small Traditional Wings (Salt & Vinegar, Parmesan Garlic)
