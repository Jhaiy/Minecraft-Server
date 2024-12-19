#!/bin/bash


sudo apt-get purge openjdk-\*

wget -O java.deb https://download.oracle.com/java/23/latest/jdk-23_linux-x64_bin.deb

sudo dpkg -i java.deb
