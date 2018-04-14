# rstudio_server_docker
Dockerfile for rstudio server

For some reason rstudio-server tries to reference things in the /home/ubuntu dir so either this dir has to be created, or, more simply, we just make user ubuntu.

```
git clone https://github.com/dlprentdsm/rstudio_server_docker.git
cd rstudio_server_docker
docker build . -t rstudio_server
docker container run --rm -p 8787:8787 -v $(pwd):/home/rstudio -w /home/rstudio -d rstudio_server
```

Note that for RstudioServer the username and password can be any user of the system (but in this case the container which only has the user "ubuntu", so just ubuntu:ubuntu)
