#!/bin/sh

# set up hci0
sudo hciconfig hci0 up
sudo hciconfig hci0 piscan

# make bluetooth advertise
# use cat to enter many commands and end with EOF
cat | sudo bluetoothctl << EOF
agent on
advertise yes
quit
EOF

# run the actual SSSS script
sudo ./SSSS.py
