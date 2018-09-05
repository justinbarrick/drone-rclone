Drone service for using rclone and minio to provide build cache in drone builds.

Example:

```
workspace:
  base: /go
  path: example

pipeline:
  build:
    image: golang:1.11-stretch
    commands:
      - go build ./cmd/
    environment:
      - GOPATH=/go/example/.go
      - CGO_ENABLED=0
      - GO111MODULE=on

services:
  build-cache:
    image: justinbarrick/drone-rclone:latest
    pull: true
    privileged: true
    secrets: [AWS_ACCESS_KEY, AWS_SECRET_KEY]
    environment:
      - MOUNT=.go
      - ENDPOINT=https://build-cache.codesink.net
```
