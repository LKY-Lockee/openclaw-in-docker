FROM alpine/openclaw:latest

USER root

RUN apt-get update
RUN apt-get install -y --no-install-recommends ffmpeg wget
RUN rm -rf /var/lib/apt/lists/*

RUN wget -q https://go.dev/dl/go1.23.0.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && \
    rm go1.23.0.linux-amd64.tar.gz
ENV PATH=$PATH:/usr/local/go/bin

RUN npm install -g clawhub

USER node
