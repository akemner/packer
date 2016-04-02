#!/bin/bash -eux
if [[ $PACKER_BUILDER_TYPE =~ virtualbox ]]; then
    echo "==> Applying vbox guest additions prerequisites"
    yum -y install gcc kernel-devel
    # yum -y update --security
    # reboot
    echo "Rebooting the machine..."
    reboot
    sleep 60
fi
