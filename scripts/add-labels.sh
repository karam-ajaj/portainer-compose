#!/bin/bash

# add worker labels to nodes
docker node update --label-add worker=enabled px01
docker node update --label-add worker=enabled px02
docker node update --label-add worker=enabled px03

# add arch labels to nodes
docker node update --label-add Arch=64 px01
docker node update --label-add Arch=64 px02
docker node update --label-add Arch=64 px03

docker node update --label-add Arch=64 pc01.karam.lab

docker node update --label-add Arch=i686 tc01.karam.lab
docker node update --label-add Arch=i686 tc02.karam.lab
docker node update --label-add Arch=i686 tc03.karam.lab
docker node update --label-add Arch=i686 tc04.karam.lab
docker node update --label-add Arch=i686 tc05.karam.lab
docker node update --label-add Arch=i686 tc06.karam.lab