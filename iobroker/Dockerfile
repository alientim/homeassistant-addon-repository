FROM buanet/iobroker:v10.0.0
WORKDIR /opt/iobroker
VOLUME ["/addons_config/iobroker"]
EXPOSE 8081
EXPOSE 1883
COPY run.sh /run.sh
RUN chmod +ax /run.sh
CMD ["/run.sh"]
