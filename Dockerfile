FROM dclong/r-dev

ADD rstudio-server.deb /

RUN apt-get update \
    # && apt-get install -y /rstudio-server.deb \
    && apt-get install -y --no-install-recommends git /rstudio-server.deb \
    && rm /rstudio-server.deb \
    # configure a non-root user for RStudio
    && useradd rstudio \
    && echo "rstudio:rstudio" | chpasswd \
    && mkdir /home/rstudio \
    && chown rstudio:rstudio /home/rstudio \
    && addgroup rstudio staff \ 
    && apt-get autoremove \
    && apt-get autoclean 

EXPOSE 8787

ADD Rprofile.site /usr/local/lib/R/etc/
# ADD userconf.sh /etc/cont-init.d/conf
# ADD rstudio /etc/services.d/
ADD init.sh /
ADD script.sh /

ENTRYPOINT ["init.sh"]

