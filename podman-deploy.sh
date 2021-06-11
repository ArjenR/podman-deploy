#!/bin/bash
podname=${PWD##*/}
systemctl is-active --quiet pod-${podname} && systemctl stop pod-${podname}
podman-compose up -d ${@}
rm *.service
podman generate systemd --new --files --name ${podname}
cp *.service /etc/systemd/system && \
systemctl daemon-reload && \
podman-compose down && \
systemctl start pod-${podname}
