#!/usr/bin/env bash

set -euo pipefail

IMAGE_NAME="ubuntu-24.04-docker"
IMAGE_VERSION="1.0.0"
PARENT_IMAGE="236848111"

SNAPSHOT=$(jq -r '.builds[-1].artifact_id' packer-output.json)

jq -n \
  --arg image "ubuntu-24.04-docker" \
  --arg version "1.0.0" \
  --arg parent "236848111" \
  --arg snapshot "$SNAPSHOT" \
'
{
  image: $image,
  version: $version,
  parent: $parent,
  snapshot: $snapshot,
  builder: "digitalocean",
  packer_output: "packer-output.json"
}
' > image-manifest.json

echo "Created image-manifest.json"
