#!/bin/bash
####################################
#
# Installs rvm in macOS 10.13.6 (17G65)
#                       Darwin 17.7.0 2018
# ref.:https://hackercodex.com/guide/python-development-environment-on-mac-osx/
#
#
####################################
#We are going to install the latest version of Python via Homebrew. Why bother, you ask, when Apple includes Python along with macOS? Here are some reasons:
#When using the bundled Python, macOS updates can nuke your Python packages, forcing you to re-install them.
#As new versions of Python are released, the Python bundled with macOS will become out-of-date. Homebrew always has the most recent version.
#Apple has made significant changes to its bundled Python, potentially resulting in hidden bugs.
#Homebrew’s Python includes the latest versions of Pip and Setuptools (Python package management tools)
#Use the following command to install Python 3.x via Homebrew:
brew install python
#==> python
#Python has been installed as
#  /usr/local/bin/python3
#
#Unversioned symlinks `python`, `python-config`, `pip` etc. pointing to
#`python3`, `python3-config`, `pip3` etc., respectively, have been installed into
#  /usr/local/opt/python/libexec/bin
#
#If you need Homebrew's Python 2.7 run
#  brew install python@2

#Pip, setuptools, and wheel have been installed. To update them run
#  pip3 install --upgrade pip setuptools wheel

#You can install Python packages with
#  pip3 install <package>
#They will install into the site-package directory
#  /usr/local/lib/python3.7/site-packages
#
#See: https://docs.brew.sh/Homebrew-and-Python
#If you need Homebrew's Python 2.7 run
brew install python@2
#install Virtualenv
pip3 install virtualenv
#Create some directories to store our projects, virtual environments, and Pip configuration file, respectively
mkdir -p ~/Projects ~/Virtualenvs ~/Library/Application\ Support/pip
#Pip undocumented setting (source)
#that tells it to bail out if there
#is no active virtual environment
#require-virtualenv = true
nano ~/Library/Application\ Support/pip/pip.conf
# insert and uncomment by removing #
#[install]
#require-virtualenv = true
#
#[uninstall]
#require-virtualenv = true

# New virtual environments can be created via:
#cd ~/Virtualenvs
#virtualenv foobar
# If you have both Python 2.x and 3.x and want to create a Python 3.x virtualenv:
#virtualenv -p python3 foobar-py3
