FROM jenkins/jenkins:lts

USER root
#RUN apt-get update && apt-get install -y docker.io
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-linux-x86_64" \
    -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
