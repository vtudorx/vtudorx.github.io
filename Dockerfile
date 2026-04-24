FROM debian:bookworm-slim

ARG HUGO_VERSION=0.158.0
ARG TARGETARCH
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates wget git \
    && wget -O /tmp/hugo.deb "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-${TARGETARCH}.deb" \
    && apt-get install -y --no-install-recommends /tmp/hugo.deb \
    && rm -rf /var/lib/apt/lists/* /tmp/hugo.deb

WORKDIR /site

EXPOSE 1313

ENTRYPOINT ["hugo"]
CMD ["server", "-D", "--bind", "0.0.0.0", "--baseURL", "http://localhost:1313"]
