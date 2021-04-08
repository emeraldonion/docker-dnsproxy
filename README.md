# Docker image for [dnsproxy](https://github.com/adguardteam/dnsproxy)

A Docker image for [dnsproxy](https://github.com/adguardteam/dnsproxy), a simple DNS proxy with DoH, DoT, DoQ and DNSCrypt support.

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/emeraldonion/docker-dnsproxy/Docker%20Publish?style=for-the-badge)
![Docker Pulls](https://img.shields.io/docker/pulls/emeraldonion/docker-dnsproxy?style=for-the-badge)

### Quickstart

`docker run -p 127.0.53.53:53:53/udp emeraldonion/docker-dnsproxy` and set 127.0.53.53 as your DNS nameserver.

### Upstream selection

Set the `DNSPROXY_UPSTREAM` environment variable to your preferred upstream server. For example to use Emerald Onion's DoQ server:
`docker run -p 127.0.53.53:53:53/udp -e 'DNSPROXY_UPSTREAM=quic://dns.emeraldonion.org:8853' emeraldonion/docker-dnsproxy`
