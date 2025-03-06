#!/usr/bin/with-contenv bashio
CONFIG_PATH=$(bashio::config 'config_path')
LOG_LEVEL=$(bashio::config 'log_level')

if ! [ -f "$CONFIG_PATH" ]; then
    echo "No configuration file found at $CONFIG_PATH! Please create one."
    echo "Restart the add-on after placing your configuration file in '/addon_configs/iobroker'."
    exit 1
fi

echo "Found configuration file at $CONFIG_PATH. Copying to /opt/iobroker..."
cp "$CONFIG_PATH" /opt/iobroker/iobroker.json

echo "Starting ioBroker..."
cd /opt/iobroker
if [ "$LOG_LEVEL" = "debug" ]; then
    node node_modules/iobroker.js-controller/controller.js --debug
else
    node node_modules/iobroker.js-controller/controller.js
fi
