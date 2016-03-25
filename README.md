# Packer templates for CentOS

### Overview

This repository contains Packer templates for creating CentOS AMIs from a source AMI.


## Building the AMIs with Packer

We make use of JSON files containing user variables to build specific versions of CentOS.
You can tell `packer` to use a specific user variable file via the `-var-file=` command line
option(so far this isn't needed).  The template makes use of environment variables.

# Environment Variables
    `AWS_ACCESS_KEY_ID`
    `AWS_SECRET_ACCESS_KEY`
    `AWS_SOURCE_AMI`
    `AWS_NAME_TAG`
    `AWS_OWNER_TAG`
    `AWS_VPC_ID`
    `AWS_REGION`
    `AWS_SUBNET`
    `AWS_SECURITY_GROUP_SSH`
    `AWS_SECURITY_GROUP_WINRM`
    `AWS_INSTANCE_TYPE`
    `SSH_USERNAME`
    `CHEF_RUN_LIST`
    `CHEF_VALIDATION_KEY_PATH`

# Default User Variables

    `"chef_server_url": "https://gdp-chef.gannettdigital.com/"`
    `"chef_version": "12.5.1"`

    `VERSION` should come from the `VERSION` file in this repository.

For example, to build CentOS, use the following:

    $ version=$(cat VERSION)
    $ packer build -var "version=${version}" ${packer_template}
