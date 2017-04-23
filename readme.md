# dclong/rstudio

RStudio Server (with R base).

## About the Author

[Personal Blog](http://www.legendu.net)   |   [GitHub](https://github.com/dclong)   |   [Bitbucket](https://bitbucket.org/dclong/)   |   [LinkedIn](http://www.linkedin.com/in/ben-chuanlong-du-1239b221/)

## Usage 

Run the docker with one of the following commands.

```
docker run -d -p 8888:8888 \
    -v /wwwroot:/wwwroot \
    dclong/rstudio 
```

```
docker run -d -p 8888:8888 \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_USER_ID=`id -u` \
    -e DOCKER_PASSWORD=`id -un` \
    -v /wwwroot:/wwwroot \
    dclong/rstudio
```
```
docker run -d -p 8888:8888 \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_USER_ID=`id -u` \
    -v /wwwroot:/wwwroot \
    dclong/rstudio
```
