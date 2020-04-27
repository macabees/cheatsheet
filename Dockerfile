FROM debian

RUN apt-get -y update \ 
    && apt-get -y install \
        python3 python3-pip \
    && pip3 install cheat \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV CHEATPATH='/usr/local/lib/python3.7/dist-packages/usr/share/cheat'
ENV CHEAT_COLORS=true
ENV CHEAT_COLORSCHEME=light
ENV TERM=xterm-256color
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

ENTRYPOINT ["cheat"]

