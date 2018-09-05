#!/bin/ash

set -x

mkdir -p /root/.config/rclone/
mkdir -p $MOUNT

cat <<EOF > /root/.config/rclone/rclone.conf
[build-cache]
type = s3
provider = Minio
env_auth = true
endpoint = $ENDPOINT
EOF

rclone mount build-cache:build-cache/$DRONE_REPO $MOUNT
