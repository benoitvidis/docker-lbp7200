FROM ubuntu:trusty
MAINTAINER Benoît Vidis <contact@benoitvidis.com>

RUN  apt-get update \
  && apt-get install -y \
      curl \
      gdebi-core \
  && cd /root \
  && curl -SLO http://gdlp01.c-wss.com/gds/6/0100004596/04/Linux_CAPT_PrinterDriver_V270_uk_EN.tar.gz \
  && tar xvf Linux_CAPT_PrinterDriver_V270_uk_EN.tar.gz \
  && gdebi -n Linux_CAPT_PrinterDriver_V270_uk_EN/64-bit_Driver/Debian/cndrvcups-common_3.20-1_amd64.deb \
  && gdebi -n Linux_CAPT_PrinterDriver_V270_uk_EN/64-bit_Driver/Debian/cndrvcups-capt_2.70-1_amd64.deb \
  && apt-get remove --purge -y \
      curl \
      gdebi-core \
  && apt-get autoremove -y 

