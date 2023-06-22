# ResilioSync_Unprivileged
🔄️ Run Resilio Sync without system privileges. (No root permission)

## How to use
```bash
# This will download Resilio Sync binary from
#  - https://download-cdn.resilio.com/stable/linux-x64/resilio-sync_x64.tar.gz
# and extract in current work dir
# and create "./storage" dir which save rslsync database and runtime files
./setup.sh

# Check your config file (default webui https port is 8888)
nano user_config.json

# Start daemon
./start.sh

# Stop daemon
./stop.sh

# Force stop daemon
./force-stop.sh
```

## Disclamer
This repository's script is under MIT license, but the associated Resilio Sync items are under their license.
- http://www.resilio.com/legal/privacy
- http://www.resilio.com/legal/terms-of-use
- http://www.resilio.com/legal/eula
