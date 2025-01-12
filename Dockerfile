FROM debian:12-slim

RUN apt update && apt-get install gcc make libpcre3-dev zlib1g-dev libssl-dev git -y && apt-get clean

RUN git clone https://github.com/nginx/nginx.git

WORKDIR nginx

RUN ./auto/configure && make && make install

RUN echo 'export PS1="misha@tarasov:\w\$ "' >> /etc/bash.bashrc

COPY nginx.conf /usr/local/nginx/conf/nginx.conf
COPY images/ /data/images/

EXPOSE 80
STOPSIGNAL SIGQUIT
CMD ["/usr/local/nginx/sbin/nginx","-g","daemon off;"]
