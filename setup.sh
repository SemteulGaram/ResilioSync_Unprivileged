#!/bin/bash

# Download Resilio Sync binary from https://download-cdn.resilio.com/stable/linux/glibc_x64/0/resilio-sync_glibc23_x64.tar.gz
wget https://download-cdn.resilio.com/stable/linux/glibc_x64/0/resilio-sync_glibc23_x64.tar.gz
tar -xvf resilio-sync_glibc23_x64.tar.gz

# Create storage directory for rslsync data
mkdir -p ./storage

# Echo
echo "Resilio Sync binary downloaded. You can start with ./start.sh"
