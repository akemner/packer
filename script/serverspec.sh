#!/bin/bash
sudo gem install bundler --no-ri --no-rdoc
cd /tmp/test
bundle install --path=vendor
bundle exec rake spec