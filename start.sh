#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /sprachtandem/tmp/pids/server.pid

bundle install
yarn install

yarn build --watch &
yarn build:css --watch &
rails s -p 3000 -b 0.0.0.0