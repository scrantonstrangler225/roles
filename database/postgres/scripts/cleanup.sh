#!/usr/bin/env bash

set -eux

sudo apt-get clean

sudo rm -rf /var/lib/apt/lists/*

sudo rm -rf /tmp/*

sudo rm -rf /var/tmp/*

sudo truncate -s 0 /var/log/*.log || true

sudo cloud-init clean || true

history -c || true
