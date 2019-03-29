FROM dclong/r-pop

RUN apt-get update \
    && apt-get install -y --no-install-recommends wget \
    && rstudio_version=$(wget --no-check-certificate -qO- https://s3.amazonaws.com/rstudio-server/current.ver) \
    && wget https://download2.rstudio.org/rstudio-server-${rstudio_version}-amd64.deb -O /rstudio-server.deb \
    && apt-get install -y --no-install-recommends /rstudio-server.deb \
    && rm /rstudio-server.deb 

EXPOSE 8787

COPY settings/Rprofile.site /usr/local/lib/R/etc/
# COPY userconf.sh /etc/cont-init.d/conf
# COPY rstudio /etc/services.d/
COPY scripts /scripts
