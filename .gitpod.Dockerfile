FROM gitpod/workspace-full:latest

ARG CACHEBUST=1
RUN sudo apt-get update && sudo apt-get install -y docker-compose \
    && sudo apt-get update \
    && sudo apt-get install -y tzdate \
    && sudo ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime  \
    && echo "Y" | sdk install java 23-open \
    && sdk default java 23-open \
    && echo "Y" | sdk install gradle 8.12 \
    && sdk default gradle 8.12 \
    && sudo apt update \
    && sudo apt install -y mysql-client 


# rebuild docker image(2025-01-20)