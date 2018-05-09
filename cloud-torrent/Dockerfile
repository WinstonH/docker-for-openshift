# This version is for Openshift
FROM alpine:latest
RUN apk add --no-cache --update curl bash && \
    curl https://i.jpillora.com/cloud-torrent! | bash && \
    mkdir downloads && chmod 777 downloads && \
    apk del --purge curl bash
USER myuser
EXPOSE 3000
CMD cloud-torrent
