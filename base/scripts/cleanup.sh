#!/usr/bin/env bash

set -eux

apt-get clean

rm -rf /var/lib/apt/lists/*

rm -rf /tmp/*

rm -rf /var/tmp/*

# for ssh_hardening role
rm -f /etc/ssh/ssh_host_*

# remove ansible tmp directory used
rm -rf /home/vagrant/.ansible

truncate -s 0 /var/log/*.log || true

cloud-init clean || true

history -c || true
