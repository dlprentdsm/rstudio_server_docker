# rstudio_server_docker
Dockerfile for rstudio server

For some reason rstudio-server tries to reference things in the /home/ubuntu dir so either this dir has to be created, or, more simply, we just make user ubuntu.

```
cd rstudio_server_docker
docker build . -t rstudio_server
docker container run --rm -p 8787:8787 -v $(pwd):/home/rstudio -w /home/rstudio -d rstudio_server
```
