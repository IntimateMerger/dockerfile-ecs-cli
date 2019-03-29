FROM docker:18.06.2-ce 

LABEL maintainer "im-tech <tech@intimatemerger.com>"

RUN apk add --no-cache \
        git \
        openssh-client \
        ca-certificates \
        curl \
        unzip \
        python && \
    # aws-cli
    curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
    unzip awscli-bundle.zip && \
    ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws && \
    rm -rf ./awscli-bundle && \
    # ecs-cli
    curl -o /usr/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-v1.12.1 && \
    chmod +x /usr/bin/ecs-cli
