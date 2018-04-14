# rstudio_server_docker
Dockerfile for rstudio server

For some reason rstudio-server tries to reference things in the /home/ubuntu dir so either this dir has to be created, or, more simply, we just make user ubuntu.
