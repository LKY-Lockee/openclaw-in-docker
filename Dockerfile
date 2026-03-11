FROM alpine/openclaw:latest

USER root

RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg && rm -rf /var/lib/apt/lists/*

USER node
