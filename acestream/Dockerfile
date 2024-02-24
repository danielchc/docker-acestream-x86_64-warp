FROM ubuntu:18.04

RUN apt update -y && apt upgrade -y && apt -y install libpython2.7 python-pkg-resources libsqlite3-dev python-apsw wget nano redsocks iptables curl

RUN mkdir -p /opt/acestream

ADD acestream.conf  /opt/acestream
ADD entrypoint.sh  /opt/entrypoint.sh
ADD redsocks.conf /etc/redsocks.conf

RUN wget -P /opt/acestream https://download.acestream.media/linux/acestream_3.1.49_ubuntu_18.04_x86_64.tar.gz

RUN cd /opt/acestream && tar xvf acestream_3.1.49_ubuntu_18.04_x86_64.tar.gz && rm acestream_3.1.49_ubuntu_18.04_x86_64.tar.gz 

RUN chmod +x /opt/acestream/start-engine

EXPOSE 8621 6878

ENTRYPOINT /bin/bash /opt/entrypoint.sh
	
	
