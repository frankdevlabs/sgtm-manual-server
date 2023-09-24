FROM caddy:2.7.4-builder AS builder

RUN xcaddy build \
    --with github.com/zhangjiayin/caddy-geoip2

FROM caddy:2.7.4-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy