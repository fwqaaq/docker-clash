#!/usr/bin/env sh

CLASH_DASHBOARD='https://github.com/Dreamacro/clash-dashboard.git'
VERSION='latest'
DIR='clash-dashboard'

if [[ "type gh" ]]; then
  gh repo create Dreamacro/"$DIR"
  echo "use gh successful to install"
elif [[ "type git" ]]; then
  git clone $CLASH_DASHBOARD
  echo "use git successful to install"
else
  echo "failure ......., you need to check your config"
  exit 1
fi

if [[ "type node && type pnpm" ]]; then
  cd "$DIR" && pnpm i && pnpm build
  echo "success to build dist !!! yeah"
fi

if [[ "type docker" ]]; then
  docker build -t clash:lastest ..
  echo "success to build docker images"
fi

