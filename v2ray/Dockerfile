FROM alpine:latest

RUN set -ex \
&& apk --no-cache add curl wget ca-certificates nginx \
&& mkdir -p /usr/bin/v2ray/ \
&& cd /usr/bin/v2ray/ \
&& VER=$(curl -s https://api.github.com/repos/v2ray/v2ray-core/releases/latest | grep tag_name | awk  -F '"' '{print $4}') \
&& wget https://github.com/v2ray/v2ray-core/releases/download/$VER/v2ray-linux-64.zip \
&& unzip v2ray-linux-64.zip \
&& mkdir /var/log/v2ray/ \
&& chmod +x /usr/bin/v2ray/v2ray /usr/bin/v2ray/v2ctl \
&& chmod 777 -Rf /etc/v2ray/

ENV PATH /usr/bin/v2ray:$PATH

COPY config.json /etc/v2ray/config.json
COPY entrypoint.sh /usr/bin/
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /var/lib/nginx/html/index.html

RUN adduser -D myuser \
&& mkdir /run/nginx
RUN chmod -Rf 777 /etc/v2ray/ /var/lib/ /var/log/ /var/tmp/ /run
USER myuser
EXPOSE 8080
CMD entrypoint.sh
