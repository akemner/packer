#!/bin/bash
sudo chmod 444 /tmp/serverspec/node.json
sudo su -
export PATH="/sbin:/usr/local/sbin:/usr/sbin:/opt/chef/embedded/bin:$PATH"

cd /tmp/test
bundle install --path=vendor
bundle exec rake spec