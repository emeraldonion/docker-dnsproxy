FROM golang:1.16

ENV DNSPROXY_UPSTREAM="https://dns.emeraldonion.org"
ENV DNSPROXY_BOOTSTRAP="1.1.1.1"

RUN git clone https://github.com/adguardteam/dnsproxy
WORKDIR dnsproxy
RUN go build

CMD ./dnsproxy --cache-size=0 --bootstrap $DNSPROXY_BOOTSTRAP --upstream $DNSPROXY_UPSTREAM
EXPOSE 53
