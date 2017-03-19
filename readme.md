Run the docker with one of the following commands.
```
docker run -d -p 8888:8888 -v $HOME:/home/rstudio dclong/rstudio 
```
```
docker run -d -p 8888:8888 -v /wwwroot:/wwwroot -v $HOME:/home/rstudio dclong/rstudio 
```
