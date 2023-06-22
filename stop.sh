#!/bin/bash
# Stop rslsync process

# Check pid file exists
if [ ! -f ./storage/sync.pid ]; then
  echo "./storage/sync.pid file not found"
  exit 1
fi

# Get pid from ./storage/sync.pid
pid=$(cat ./storage/sync.pid)

# Echo
echo "stopping rslsync process (pid: $pid)"

# Send SIGTERM to the process and wait for it to exit
kill -SIGTERM $pid
while kill -0 $pid 2> /dev/null; do  # PID가 존재하는 동안 대기합니다.
    sleep 1  # 1초마다 체크합니다.
done

# Remove the pid file if exists
#rm -f ./storage/sync.pid

# Echo
echo "rslsync process stopped"