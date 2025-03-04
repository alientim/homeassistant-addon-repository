FROM buanet/iobroker:v10.0.0
WORKDIR /opt/iobroker
COPY run.sh /run.sh
RUN chmod +x /run.sh
EXPOSE 8081 18883
ENTRYPOINT ["/run.sh"]
