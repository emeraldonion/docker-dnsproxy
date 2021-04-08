FROM golang:1.16

ENV DNSPROXY_UPSTREAM="https://dns.emeraldonion.org"

RUN git clone https://github.com/adguardteam/dnsproxy
WORKDIR dnsproxy
RUN go build

CMD ./dnsproxy --cache-size=0 --upstream $DNSPROXY_UPSTREAM
EXPOSE 53
