#!/bin/bash
# Unattended install for RStudio & Sparklyr on Ubuntu 16.04 LTS (refer to https://www.rstudio.com/products/rstudio/download-server/)
# Tested on GCP Startup script 

sudo apt-get --assume-yes update 
sudo apt-get --assume-yes install r-base
sudo apt-get --assume-yes install gdebi-core
wget https://download2.rstudio.org/rstudio-server-1.1.383-amd64.deb
sudo gdebi --non-interactive rstudio-server-1.1.383-amd64.deb

# Below is only for Sparklyr, additional apt-get req 
sudo apt-get --assume-yes install libxml2-dev
sudo apt-get --assume-yes  install libcurl4-openssl-dev libssl-dev
sudo R -e 'install.packages(c("sparklyr"), repos="http://cran.rstudio.com/")'

# Install Java required when working with Spark
sudo apt-get install --assume-yes python-software-properties debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install --assume-yes oracle-java8-installer
