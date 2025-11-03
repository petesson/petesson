FROM debian:11
RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    curl \
    wget \
    git \
    netcat-openbsd \
    && rm -rf /var/lib/apt/lists/*
EXPOSE 8000
CMD ["/bin/bash", "-c", "nc -l -p 8000 -k & tail -f /dev/null"]
