#!/usr/bin/with-contenv bashio
CONFIG_PATH="/addon_configs/iobroker"
mkdir -p "$CONFIG_PATH"
ln -sf "$CONFIG_PATH" /opt/iobroker
chown -R iobroker:iobroker "$CONFIG_PATH"
exec gosu iobroker node /opt/iobroker/node_modules/iobroker.js-controller/controller.js
