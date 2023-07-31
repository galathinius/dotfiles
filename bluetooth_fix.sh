#!/bin/bash
############################


# fix so that bluetooth dosent disconnect unexpectedly
echo "# This section contains general options
    [General]
    Enable=Source,Sink,Media,Socket
" >> /etc/bluetooth/audio.conf

service bluetooth restart


# don't enable bluetooth at startup

echo "rfkill block bluetooth" >> ~/.profile

# to reverse the above
# rfkill unblock bluetooth