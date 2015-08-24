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
  sudo sh -s <<EOF
echo "deb http://debian.saltstack.com/debian jessie-saltstack main" > /etc/apt/sources.list.d/saltstack.list
wget -O - http://debian.saltstack.com/debian-salt-team-joehealy.gpg.key | apt-key add -
sudo aptitude update -q
sudo aptitude install -y salt-common python-apt software-properties-common python-git python-msgpack
EOF
fi

#
# call
#
sudo salt-call --local --config-dir=./ --file-root=./states --pillar-root=./pillar state.highstate
