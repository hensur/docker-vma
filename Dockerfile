FROM debian:buster
ENV DEBIAN_FRONTEND noninteractive
MAINTAINER me@hensur.de

RUN apt-get update
RUN apt-get install -y gnupg wget

RUN echo "deb http://download.proxmox.com/debian/pve buster pve-no-subscription" > /etc/apt/sources.list.d/pve-install-repo.list

RUN wget http://download.proxmox.com/debian/proxmox-ve-release-6.x.gpg -O /etc/apt/trusted.gpg.d/proxmox-ve-release-6.x.gpg

RUN apt-get update \
 && apt-get install -y --no-install-recommends pve-qemu-kvm \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["vma"]
