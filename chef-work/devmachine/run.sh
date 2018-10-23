#!/bin/bash

bundle install

bundle exec berks vendor cookbooks

git clone ~~~.git site-cookbooks/setup-mysql
git clone ~~~.git site-cookbooks/setup-redis
git clone ~~~.git site-cookbooks/setup-rabbitmq
git clone ~~~.git site-cookbooks/setup-kafka