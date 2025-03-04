# Verwende das offizielle Image von buanet als Basis
FROM buanet/iobroker:v10.0.0

# Setze das Arbeitsverzeichnis auf /opt/iobroker
WORKDIR /opt/iobroker

# Nutze den standardmäßigen Mount-Punkt von Home Assistant für `/data` und weise ihn `/opt/iobroker` zu
VOLUME [ "/opt/iobroker" ]

# Exponiere die notwendigen Ports
EXPOSE 8081 18883

# Standard-Eintragspunkt (falls von buanet's Image überschreibbar)
CMD ["node", "/opt/iobroker/iobroker.js"]
