FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl wget git vim nano

WORKDIR /app

COPY gestion_productos.sh .
COPY Readme.md .

RUN chmod +x gestion_productos.sh

# Ejecuta el script al buildear
RUN ./gestion_productos.sh

CMD ["/bin/bash"]
