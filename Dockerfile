FROM telegraf

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y smartmontools && \
    rm -rf /var/lib/apt/lists/*
