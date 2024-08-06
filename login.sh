#!/bin/bash

while choice=$(dialog \
                    --backtitle "VT100" \
                    --title "Connection Options" \
                    --menu "Choose Connection" \
                    12 25 5 \
                    1 "PDP-11" \
                    2 "PDP-8" \
                    3 "Local Shell" \
                    4 "Reboot" \
                    5 "Shutdown" \
                    2>&1 > /dev/tty)
    do
        case $choice in
            1) 
                # Use vt100 directly
                # cd ~/terminal-simulator/vt100
                # ./vt100 -a /dev/ttySC0
                # Use tio directly
                # tio -b 9600 -c 255 /dev/ttySC0
                # Use vt100 with tio
                ./vt100 -a ~/vt100-pidp-serial/pdp11.sh
                ;;
            2) 
                # Use vt100 directly
                # cd ~/terminal-simulator/vt100
                # ./vt100 -a /dev/ttySC1
                # Use tio directly
                # tio -b 9600 -c 255 /dev/ttySC1
                # Use vt100 with tio
                ./vt100 -a ~/vt100-pidp-serial/pdp8.sh
                ;;
            3) /usr/bin/zsh
                ;;
            4) sudo reboot
                ;;
            5) sudo shutdown -h now
                ;;
            *) ;;
        esac
done