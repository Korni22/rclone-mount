FROM rclone/rclone

RUN apk add --no-cache --update fuse ca-certificates 

ENTRYPOINT /root/rclone mount $MountCommands $RemotePath $AccessFolder
