FROM debian

WORKDIR /root/.config/qalculate/

RUN apt-get -y update \ 
    && apt-get -y install \
        qalc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV TERM=xterm-256color
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

ENTRYPOINT ["qalc"]
