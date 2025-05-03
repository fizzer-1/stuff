#!/usr/bin/env bash

CONFIG_PATH="/DATA/AppData/frigate/config/config.yml"

# Ensure the directory exists
mkdir -p $(dirname $CONFIG_PATH)

# Write the content to config.yml
cat > $CONFIG_PATH <<EOL
mqtt:
  enabled: False
cameras:
  enabled: True
    ffmpeg:
      inputs:
        - path: rtsp://admin:T3df616HF-cam@192.168.1.108:554/cam/realmonitor?channel=1&subtype=0
          roles:
            - detect
    detect:
      enabled: False
EOL

echo "Configuration written to $CONFIG_PATH"
