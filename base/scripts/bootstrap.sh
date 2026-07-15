#!/usr/bin/env bash

set -euxo pipefail

echo "Waiting for cloud-init..."

cloud-init status --wait

export DEBIAN_FRONTEND=noninteractive

apt-get update

apt-get -y dist-upgrade

apt-get install -y \
    curl \
    wget \
    git \
    unzip \
    zip \
    jq \
    vim \
    htop \
    ca-certificates \
    gnupg \
    lsb-release \
    software-properties-common \
    bash-completion \
    net-tools \
    dnsutils \
    apt-transport-https

timedatectl set-timezone UTC

apt-get autoremove -y

apt-get autoclean
