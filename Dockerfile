FROM busybox:1.29
MAINTAINER chris.ottinger_at_bigpond.com

RUN adduser -G users -D admin

COPY bin/* /usr/local/bin/

USER admin
