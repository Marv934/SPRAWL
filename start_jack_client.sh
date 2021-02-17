#!/bin/sh

killall jacktrip
killall jackd

#BUFFER=$(zenity --list \
#column=Check --height 800 \
#--text="Please select a buffer size by checking only one number! Ask your session admin for details!" \
#--column="Select" --column="Buffersize"  64 FALSE 128 FALSE 256 FALSE 512 FALSE 1024   --checklist);

echo $BUFFER

# sleep 1

# knock wintermute.ak.tu-berlin.de 4464:udp 4466:udp 61000:udp 4464:tcp  -d 10 &&

sleep 1

jackd -P 90 -d alsa -d hw:1,0 -r 48000 -p 128 &

sleep 2

bin/jacktrip_nils -C 85.214.78.6 -n 2 -K AP
