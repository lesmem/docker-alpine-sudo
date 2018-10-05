#!/usr/bin/env sh
set -eu
if [ -d "/suidfs/" ]; then
	cp -a "/usr/bin/sudo" "/suidfs/sudo"
fi
sudo -u user -- "$@"
