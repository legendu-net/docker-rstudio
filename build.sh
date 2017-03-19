#!/bin/bash

if [[ ! -f rstudio-server.deb ]]; then
    wget https://download2.rstudio.org/rstudio-server-1.0.136-amd64.deb -O rstudio-server.deb
fi

docker build -f Dockerfile -t dclong/rstudio .
