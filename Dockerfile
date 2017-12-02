FROM debian:stretch-slim

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="ZenD in Docker. Full node."

WORKDIR /tmp

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates curl libgomp1 \
    && curl -L -O https://github.com/ZencashOfficial/zen/releases/download/v2.0.10/zen-2.0.10-arm64.deb \
    && dpkg -i zen-2.0.10-arm64.deb \
    && rm zen-2.0.10-arm64.deb \
    && apt-get -y remove ca-certificates curl \
    && apt-get -y autoremove \
    && apt-get clean autoclean \
    && rm -rf /var/lib/{apt,dpkg,cache,log}

ENTRYPOINT ["zend"]
CMD ["-?"]
