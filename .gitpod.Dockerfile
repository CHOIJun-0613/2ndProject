FROM gitpod/workspace-full:latest

ARG CACHEBUST=1
RUN sudo apt-get update && sudo apt-get install -y docker-compose

# rebuild docker image(2025-01-20)