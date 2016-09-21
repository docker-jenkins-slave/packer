FROM jenkinsslave/aws_cli_docker

MAINTAINER adam v0.1

RUN apt-get update && \
    apt-get install -y \
        unzip \
        && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://releases.hashicorp.com/packer/0.10.2/packer_0.10.2_linux_amd64.zip && \
    unzip packer_0.10.2_linux_amd64.zip && \
    mv packer /bin/ && \
    rm packer_0.10.2_linux_amd64.zip

