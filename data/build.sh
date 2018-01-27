#!/bin/sh

echo Installing Metasploit Framework
apt-get update
apt-get -y install metasploit-framework vim

# Purge Apt Caches
apt-get -y clean
rm -rf /var/lib/apt/lists/*

