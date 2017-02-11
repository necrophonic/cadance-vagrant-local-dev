#!/usr/bin/env bash

function install {
  apt-get -qq install $1 -y --force-yes
}

echo "Running SUDO installs"

# None
