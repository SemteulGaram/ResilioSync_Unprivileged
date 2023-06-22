#!/bin/bash
# force stop rslsync process

# Check pid file exists
if [ ! -f ./storage/sync.pid ]; then
  echo "./storage/sync.pid file not found"
  exit 1
fi

# Get pid from ./storage/sync.pid
pid=$(cat ./storage/sync.pid)

# Echo
echo "force stopping rslsync process (pid: $pid)"

# Send SIGKILL to the process
kill -SIGKILL $pid

# Remove the pid file if exists
#rm -f ./storage/sync.pid

# Echo
echo "rslsync process force stopped"
