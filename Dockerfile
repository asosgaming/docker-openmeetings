FROM java:latest

ENV VERSION 3.1.1
EXPOSE 5080 1935 8081 8100 8088 8443 5443
RUN set -ex; \
    cd /opt; \
    wget -q http://apache.crihan.fr/dist/openmeetings/$VERSION/bin/apache-openmeetings-$VERSION.tar.gz; \
    tar zxf apache-openmeetings-$VERSION.tar.gz; \
    rm -f apache-openmeetings-$VERSION.tar.gz;

RUN set -ex; \
    apt-get update; \
    apt-get install -y swftools ffmpeg ghostscript imagemagick libreoffice sox jodconverter libart-2.0-2; \
    apt-get clean;

RUN set -ex; \
    cd /tmp; \
    wget -P /tmp/ http://archive.canonical.com/ubuntu/pool/partner/s/swftools/swftools_0.9.0-0ubuntu2_amd64.deb; \
    chmod a+x /tmp/swftools_0.9.0-0ubuntu2_amd64.deb; \
    dpkg -i /tmp/swftools_0.9.0-0ubuntu2_amd64.deb; \
    rm -f /tmp/swftools_0.9.0-0ubuntu2_amd64.deb;

WORKDIR /opt
CMD ["./red5.sh"]
