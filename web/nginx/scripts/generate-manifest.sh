#!/usr/bin/env bash

set -euo pipefail

SNAPSHOT=$(jq -r '.builds[0].artifact_id' packer-output.json)

jq -n \
--arg image "${IMAGE_NAME}" \
--arg version "${IMAGE_VERSION}" \
--arg parent "${PARENT_IMAGE}" \
--arg snapshot "${SNAPSHOT}" \
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
