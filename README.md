# Table of Contents
- [Introduction](#introduction)
- [Installation](#installation)
- [Quick Start](#quick-start)

# Introduction

Dockerfile to build a Debian Buster image
with the Proxmox [vma](http://pve.proxmox.com/wiki/VMA#Command_line_utility)
command line utility

# Installation
Pull the latest version of the image from the docker registry. This is the recommended method of installation as it is easier to update image in the future. These builds are performed by the **Docker Trusted Build** service.

```
docker pull hensur/vma:latest
```

Alternately you can build the image yourself.

```
git clone https://github.com/hensur/docker-vma.git
cd docker-vma
docker build -t "$USER/vma" .
```

# Quick Start
Run the image and mount the directory containing your VMA images:

```
# docker run -it -v <IMAGES DIRECTORY>:/images hensur/vma:latest
usage: vma command [command options]

vma list <filename>
vma config <filename> [-c config]
vma create <filename> [-c config] pathname ...
vma extract <filename> [-r <fifo>] <targetdir>
vma verify <filename> [-v]
```
