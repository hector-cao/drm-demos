#!/bin/bash

SCRIPT_PATH=$(readlink -f "${BASH_SOURCE:-$0}")
DIR_PATH=$(dirname $SCRIPT_PATH)

#convert -resize 720x test.png - | convert -extent 1920x1080 -gravity Center - bgra:- | ./drm-framebuffer -d /dev/dri/card0 -c eDP-1
#convert -resize 800x135 test.png - | convert -extent 1920x1080 -gravity Center - bgra:- | ./drm-framebuffer -d /dev/dri/card0 -c eDP-1
convert -extent 1440x900 -gravity Center $DIR_PATH/test.png bgra:- | $DIR_PATH/../drm-framebuffer -d /dev/dri/card0 -c eDP-1

