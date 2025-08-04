#!/bin/bash

# Run windscribe status
output=$(windscribe status)

# Parse status
if echo "$output" | grep -q "Connected"; then
    echo '{"alt": "connected", "label": "Connected"}'
elif echo "$output" | grep -q "Disconnected"; then
    echo '{"alt": "disconnected", "label": "Disconnected"}'
else
    echo '{"alt": "unknown", "label": "Unknown"}'
fi

