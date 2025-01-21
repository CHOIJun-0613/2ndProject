FROM gitpod/workspace-full:latest

ARG CACHEBUST=1
 
RUN sudo apt-get update && sudo apt-get install -y docker-compose 
RUN sudo apt-get install -y mysql-client
RUN sudo ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localti