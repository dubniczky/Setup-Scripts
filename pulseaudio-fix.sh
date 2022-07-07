#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Fix audio mute or max error with pulseaudio

## Veryfy root user
if [ "$EUID" -ne 0 ]; then
    echo "This fix modifies system configuration. Please run as root."
    exit 1
fi

## Config
PULSE_CONFIG="/usr/share/pulseaudio/alsa-mixer/paths/analog-output.conf.common"
CONFIG_REPLACE="[Element Master]\nswitch = mute\nvolume = ignore\n\n[Element PCM]\n"

## Create backup
BACKUP_FILE="$PULSE_CONFIG.bkp"
cp "$PULSE_CONFIG" "$BACKUP_FILE"
echo "Created backup: $BACKUP_FILE"

## Patch config file
sed "s/\[Element PCM\]/$CONFIG_REPLACE/" "$PULSE_CONFIG" \
    | tee "$PULSE_CONFIG" > /dev/null
echo "Config override successful."

## Restart pulseaudio
echo "Restarting PulseAudio..."
pulseaudio -k
pulseaudio -D
echo "Done."
