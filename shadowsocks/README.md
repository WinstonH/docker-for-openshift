# Shadowsocks
Openshift + shadowsocks \
Deploy shadowsocks on Openshift platform
## Principle
Simple-obfs convert the traffic into websocket instead of ordinary tcp connection, which could serve behind nginx. \
Theoretically, this enables ss-server to use any CDN that support websocket traffic, for example, Cloudflare.
## Password
Config env "PASSWORD" to set password \
example: `PASSWORD=ss2018` \
If you don't set one, the default password is `tryopenshift`
