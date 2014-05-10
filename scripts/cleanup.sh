#!/usr/bin/env bash

# Remove leftover leases and persistent rules
rm /var/lib/dhcp3/*

# Clean up udev rules
rm /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm -rf /dev/.udev/
rm /lib/udev/rules.d/75-persistent-net-generator.rules

# Add a 2 second delay to the interface up, to make the dhclient happy
echo "pre-up sleep 2" >> /etc/network/interfaces

# Clean up unneeded packages
apt-get autoremove
apt-get clean

# Zero out the free space to save space in the final image
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY