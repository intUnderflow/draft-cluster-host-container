#!/bin/bash
set -x

mkdir -p /go/src/k8s.io
git clone --single-branch -b $REF $REPO /go/src/k8s.io/kubernetes

systemctl start docker

kind build node-image
kind create cluster --image kindest/node:latest