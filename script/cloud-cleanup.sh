#!/bin/bash -eux

# find and remove any authorized_keys
find / -name "authorized_keys" | xargs -i rm -f {}

# wipe cloud-init configuration if it already ran
rm -rf /var/lib/cloud/instances

# remove ssh_host_keys
rm /etc/ssh/ssh_host_key
rm /etc/ssh/ssh_host_rsa_key*
rm /etc/ssh/ssh_host_dsa_key*
rm /etc/ssh/ssh_host_ecdsa_key*
