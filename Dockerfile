FROM node:18-bullseye-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends curl openjdk-17-jre-headless && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN npm install -g npm-groovy-lint@14.6.0

# Downgrade CodeNarc to 3.3.0
RUN cd /usr/local/lib/node_modules/npm-groovy-lint && \
    curl -L -o codenarc-3.3.0.jar https://github.com/CodeNarc/CodeNarc/releases/download/v3.3.0/CodeNarc-3.3.0.jar && \
    rm -f lib/codenarc-*.jar && \
    mv codenarc-3.3.0.jar lib/

ENV PATH="/usr/local/lib/node_modules/npm-groovy-lint/bin:${PATH}"