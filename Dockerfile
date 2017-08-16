FROM docker:17.06.0-ce-git

LABEL maintainer "mats116 <mats.kazuki@gmail.com>"

RUN curl -o /usr/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-v0.6.2 && \
    chmod +x /usr/bin/ecs-cli
