FROM telegraf

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y smartmontools lm-sensors nvme-cli ipmitool && \
    rm -rf /var/lib/apt/lists/* && \
    groupadd docker && usermod -aG docker telegraf
