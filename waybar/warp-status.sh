#!/bin/bash
status=$(warp-cli status | grep "Status update:" | awk '{print $3}')
if [ "$status" = "Connected" ]; then
    echo "{\"text\": \"󰖂\", \"tooltip\": \"Warp Connected\", \"class\": \"connected\"}"
else
    echo "{\"text\": \"󰖚\", \"tooltip\": \"Warp Disconnected\", \"class\": \"disconnected\"}"
fi
