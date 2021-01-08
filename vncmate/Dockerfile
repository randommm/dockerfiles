FROM marcoinacio/ubuntu_basic
MAINTAINER Marco Inacio <dockerfiles@marcoinacio.com>

ENV USER vncuser
ENV HOME /home/$USER
RUN adduser $USER --disabled-password

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    tightvncserver mate-core mate-desktop-environment \
    mate-notification-daemon supervisor net-tools curl git pwgen \
    mate-dock-applet chromium-browser \
    mate-indicator-applet-common mate-menu mate-netbook \
    mate-netbook-common mate-indicator-applet \
    mate-optimus mate-sensors-applet \
    mate-sensors-applet-common mate-tweak media-player-info \
    memtest86+  mesa-utils metacity-common \
    mobile-broadband-provider-info modemmanager mozo \
    mtools network-manager network-manager-gnome \
    network-manager-pptp network-manager-pptp-gnome \
    ntp onboard ubuntu-server && \
    apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 5901
WORKDIR /home/vncuser/
COPY entrypoint.sh .
RUN chmod 755 entrypoint.sh
USER vncuser
ENTRYPOINT ["./entrypoint.sh"]
