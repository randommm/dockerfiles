FROM marcoinacio/ubuntu_basic
MAINTAINER Marco Inacio <dockerfiles@marcoinacio.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y ssh-import-id ssh-pass && \
    apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /work
WORKDIR /work

RUN echo "PasswordAuthentication no" >> /etc/ssh/sshd_config
RUN ssh-import-id-gh randommm

RUN echo "service ssh start && while true; do sshpass -p $@ ssh -o ServerAliveInterval=10 -o ConnectTimeout=10 -R 12000:localhost:22 -p 53671 root@pcic.marcoinacio.com tail -F /dev/null; sleep 60; done" > /runssh.sh

RUN chmod 700 /runssh.sh

ENTRYPOINT /runssh.sh
