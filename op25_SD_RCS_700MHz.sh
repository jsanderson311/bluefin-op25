#! /bin/sh
cd /opt/op25/op25/gr-op25_repeater/apps
sudo ./rx.py --args 'rtl' -N 'LNA:47' -S 2500000 -x 2 -f 771.48125e6 -o 17e3 -q 0 -T sdfrequencies.tsv -V -2 -U
