FROM ubuntu:22.04

RUN apt update && \
    apt install -y util-linux && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
