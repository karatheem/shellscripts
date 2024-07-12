#!/bin/sh
set -x

rsync --progress -avrxH --delete $*
