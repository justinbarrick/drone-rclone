FROM alpine

RUN apk update && apk add curl fuse

RUN curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip && unzip rclone-current-linux-amd64.zip && cp rclone-*-linux-amd64/rclone /usr/bin/rclone && chmod +x /usr/bin/rclone

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
