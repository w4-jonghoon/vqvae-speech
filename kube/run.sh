#!/usr/bin/env bash

# sync files
rsync -avz $PWD/.. jonghoon.seo@nas0.prem.forg.skelterlabs.com:/nas0/home/jonghoon.seo/vqvae-speech \
--exclude='vqvae-speech/.git/'

# execute kubernetes job
BASEDIR=$(dirname "$0")
echo $BASEDIR
kubectl create -f $BASEDIR/kube.yaml
