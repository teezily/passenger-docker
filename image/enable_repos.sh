#!/bin/bash
set -e
source /pd_build/buildconfig
set -x

## Brightbox Ruby 1.9.3, 2.0, 2.1 and 2.2
echo deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main > /etc/apt/sources.list.d/brightbox.list


# The recv-keys part takes a bit of time, so it's faster to receive multiple keys at once.
#
# Brightbox
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys \
	C3173AA6 \
