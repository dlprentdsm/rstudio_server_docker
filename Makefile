up-r-ml-gpu:
  docker pull rocker/ml-gpu && nvidia-docker run -d -e ROOT=TRUE -e PASSWORD=mu -p 8787:8787 -v $(pwd):/home/rstudio rocker/ml-gpu
up-r-ml:
  docker pull rocker/ml && docker run -d -e ROOT=TRUE -e PASSWORD=mu -p 8787:8787 -v $(pwd):/home/rstudio rocker/ml
