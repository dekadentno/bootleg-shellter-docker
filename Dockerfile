FROM --platform=linux/amd64 debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y wget nano tzdata && \
    ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y wine32 && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/ParrotSec/shellter/blob/master/shellter.exe -O /usr/bin/shellter && \
    chmod 775 /usr/bin/shellter && \
    cp /usr/bin/shellter /usr/share/shellter.exe

ENTRYPOINT ["bash"]