#!/bin/bash
# A very simple script to pass as argument to vt100 simulator
# The simulator sometimes has problems connecting to the tty device directly
# and it needs a single program without arguments instead of the device name

tio -b 9600 -c 255 /dev/ttySC1
