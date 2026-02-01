FROM debian:latest

LABEL maintainer="@cdryzun" \
      maintainer="yangzun@treesir.pub" \
      version=0.1 \
      description="Openconnect server with libpam-ldap for AD authentication"

COPY docker-entrypoint.sh /
COPY ocserv /config
COPY pam_ldap /etc/default/pam_ldap

RUN \cp -a /config /etc/default/ocserv \
    && apt-get update && apt-get install -y \
            ocserv \
            libnss-ldap \
            iptables \
            procps \
            rsync \
            sipcalc \
            ca-certificates \
            gnutls-bin \
    && rm -rf /var/lib/apt/lists/* /etc/pam_ldap.conf \
    && touch /config/pam_ldap.conf \
    && ln -s /config/pam_ldap.conf /etc/pam_ldap.conf \
    && chmod a+x /docker-entrypoint.sh

WORKDIR /config

EXPOSE 443/tcp \
      443/udp

ENTRYPOINT ["/docker-entrypoint.sh", "ocserv", "-c", "/config/ocserv.conf", "-f"]