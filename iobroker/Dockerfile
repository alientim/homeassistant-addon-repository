ARG BUILD_FROM
# hadolint ignore=DL3006
FROM ${BUILD_FROM} AS builder

# Install necessary dependencies for building ioBroker
RUN apk --no-cache add wget bash tar

# Optional: Specify ioBroker version if required
ARG IOBROKER_VERSION="v10.0.0"

# Prepare ioBroker environment
RUN wget https://github.com/ioBroker/ioBroker/archive/refs/tags/${IOBROKER_VERSION}.tar.gz \
    && tar xzf ${IOBROKER_VERSION}.tar.gz \
    && rm ${IOBROKER_VERSION}.tar.gz \
    && cd ioBroker-${IOBROKER_VERSION} \
    && bash setup.sh

# Build runtime image
FROM ${BUILD_FROM}
RUN apk --no-cache add bash nodejs npm

# Create necessary directories for ioBroker
RUN mkdir -p /opt/iobroker \
    && mkdir -p /addon_configs/iobroker

# Copy ioBroker from builder stage
COPY --from=builder /ioBroker-${IOBROKER_VERSION} /opt/iobroker

# Copy the run script
COPY run.sh /
RUN chmod a+x /run.sh

# Set the startup command
CMD [ "/run.sh" ]
