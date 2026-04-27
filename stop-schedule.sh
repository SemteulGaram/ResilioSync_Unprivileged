#!/bin/bash

# 사용자에게 스크립트를 실행할 대기 시간을 입력받습니다.
echo "Enter the delay before the script execution (e.g., 5s, 5m, 5h for 5 seconds, 5 minutes, 5 hours respectively):"
read delay

# nohup과 함께 대상 스크립트를 실행하고, 백그라운드에서 sleep 후 실행하도록 합니다.
# 그리고 그 PID를 sleep.pid 파일에 저장합니다.
nohup bash -c "sleep $delay && ./stop.sh" > nohup.out 2>&1 & echo $! > sleep.pid

echo "The script will be executed after the delay: $delay. The PID of the sleep process is saved in the file: sleep.pid"
# kill $(cat sleep.pid)
