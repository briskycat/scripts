#/usr/bin/env bash
#run under sudo

#modprobe -r psmouse
rmmod psmouse

modprobe psmouse
