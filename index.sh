#!/bin/bash

# usage:
# [sudo] ./index.sh

if [ ! $(which salt-call) ]
then
  #
  # bootstrap
  #

  # TODO make it work with other package managers
  # (apt-get, pacman, yum)
  sudo aptitude install salt-common
fi

#
# call
#
sudo salt-call --local --config-dir . state.highstate
