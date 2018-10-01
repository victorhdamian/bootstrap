#!/bin/bash
####################################
#
# Installs gcp sdk in macOS 10.13.6 (17G65)
#                       Darwin 17.7.0 2018
#
# ref.:https://cloud.google.com/sdk/docs/quickstart-macos
#
#
####################################
#verify Python 2.7 is installed on your system
python -V
#Download the archive file best suited to your operating system
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-216.0.0-darwin-x86_64.tar.gz
# Extract the archive
gunzip -c google-cloud-sdk-216.0.0-darwin-x86_64.tar.gz | tar xopf -
# remove zip file
rm google-cloud-sdk-216.0.0-darwin-x86_64.tar.gz
#execute install script to add Cloud SDK tools to your path
./google-cloud-sdk/install.sh
#execute gcloud init command to perform several common SDK setup tasks
source ~/.profile
gcloud init
#export GOOGLE_APPLICATION_CREDENTIALS="[PATH]"
gcloud components install kubectl
