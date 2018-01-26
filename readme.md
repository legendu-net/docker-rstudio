# [dclong/rstudio](https://hub.docker.com/r/dclong/rstudio/)

RStudio Server (with R base and packages for text mining).

## About the Author

[Personal Blog](http://www.legendu.net)   |   [GitHub](https://github.com/dclong)   |   [Bitbucket](https://bitbucket.org/dclong/)   |   [LinkedIn](http://www.linkedin.com/in/ben-chuanlong-du-1239b221/)

## Usage in Linux/Unix

Run the docker with one of the following commands.

```
docker run -d \
    --log-opt max-size=50m \
    -p 8787:8787 \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_USER_ID=`id -u` \
    -e DOCKER_PASSWORD=`id -un` \
    -v /wwwroot:/wwwroot \
    dclong/rstudio:tm
```

```
docker run -d \
    --log-opt max-size=50m \
    -p 8787:8787 \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_USER_ID=`id -u` \
    -e DOCKER_PASSWORD=`id -un` \
    -v /wwwroot:/wwwroot \
    registry.docker-cn.com/dclong/rstudio:tm
```
## Image Tree Related to [dclong/rstudio](https://hub.docker.com/r/dclong/rstudio/)

[dclong/ubuntu_b](https://hub.docker.com/r/dclong/ubuntu_b/)

- [dclong/r-base](https://hub.docker.com/r/dclong/r-base/)
    - [dclong/r-pop](https://hub.docker.com/r/dclong/r-pop/)
        - [dclong/rstudio](https://hub.docker.com/r/dclong/rstudio/)

