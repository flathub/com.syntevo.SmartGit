#!/usr/bin/env sh

set -o errexit

tar --extract --file=smartgit.tar.gz --gunzip
rm --force smartgit.tar.gz
