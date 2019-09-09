FROM rclone/rclone

RUN apk add --no-cache --update fuse ca-certificates 

ENTRYPOINT /usr/sbin/rclone mount $MountCommands $RemotePath $AccessFolder
