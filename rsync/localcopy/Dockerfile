FROM debian

# for cn user, you can use below to speed up 
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && apt-get clean

RUN apt-get update && apt-get install -y \
    openssh-server \
    rsync \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD ./run.sh /run.sh
RUN mkdir /data

CMD /run.sh
