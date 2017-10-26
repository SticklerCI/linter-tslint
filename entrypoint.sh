#!/bin/bash

REPO_URL=$1
COMMIT=$2

git clone -q $REPO_URL repo
git --git-dir=repo/.git --work-tree=repo checkout -q $COMMIT

tslint --config tslint-config-example.json \
  --format json \
  repo/**/*
