#!/bin/bash
sudo chown -R ruby /bundle

bundle check || bundle install

bundle exec rails s -b 0.0.0.0
