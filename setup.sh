#!/bin/bash

# Download Resilio Sync binary from https://download-cdn.resilio.com/stable/linux-x64/resilio-sync_x64.tar.gz
wget https://download-cdn.resilio.com/stable/linux-x64/resilio-sync_x64.tar.gz
tar -xvf resilio-sync_x64.tar.gz

# Create storage directory for rslsync data
mkdir -p ./storage

# Echo
echo "Resilio Sync binary downloaded. You can start with ./start.sh"
