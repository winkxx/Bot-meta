#!/bin/bash

OS_type="$(uname -m)"
case "$OS_type" in
  x86_64|amd64)
    OS_type='amd64'
    ;;
  i?86|x86)
    OS_type='386'
    ;;
  aarch64|arm64)
    OS_type='arm64'
    ;;
  arm*)
    OS_type='arm'
    ;;
  *)
    echo 'OS type not supported'
    exit 2
    ;;
esac


echo $OS_type
#download_link="https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-${OS_type}-static.tar.xz"
#wget "$download_link"
#tar xvf ffmpeg-git-*-static.tar.xz && rm -rf ffmpeg-git-*-static.tar.xz
#mv ffmpeg-git-*/ffmpeg  ffmpeg-git-*/ffprobe /usr/bin/

bash <(curl -sL install.emengweb.com/fclone.sh)
mv /usr/bin/fclone /usr/bin/rclone
chmod 777 /usr/bin/rclone

curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash
bgmi install
pip install bgmi -U
bgmi upgrade
bgmi config
bgmi source mikan_project
bgmi config ARIA2_RPC_URL 'http://127.0.0.1:8080/rpc'
bgmi config ARIA2_RPC_TOKEN 'token:$Aria2_secret'
bgmi config ADMIN_TOKEN '$ADMIN_TOKEN'
bgmi config TORNADO_SERVE_STATIC_FILES '0'
#wget https://github.com/FolderMagic/FolderMagic/raw/master/FolderMagic
#chmod +x FolderMagic
