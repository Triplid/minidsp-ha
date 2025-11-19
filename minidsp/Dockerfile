ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:3.19
FROM ${BUILD_FROM}

RUN apk add --no-cache python3 py3-pip

RUN python3 -m venv /opt/venv && \
    /opt/venv/bin/pip install --no-cache-dir flask gunicorn

COPY api.py /app/api.py
COPY rootfs/ /

WORKDIR /app
EXPOSE 8080
