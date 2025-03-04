FROM buanet/iobroker:v10.0.0
WORKDIR /opt/iobroker
VOLUME ["/addons_config/iobroker"]
EXPOSE 8081
EXPOSE 1883
CMD ["node", "node_modules/iobroker.js-controller/controller.js"]
