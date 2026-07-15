#!/usr/bin/env bash

set -euxo pipefail

echo "Waiting for cloud-init..."

cloud-init status --wait
