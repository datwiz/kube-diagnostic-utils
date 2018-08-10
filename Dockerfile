FROM busybox:1.29
MAINTAINER chris.ottinger_dot_dpc.vic.gov.au

RUN adduser -G users -D admin

COPY bin/* /usr/local/bin/

USER admin
