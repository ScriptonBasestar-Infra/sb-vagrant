#
# Cookbook:: setup-redis
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'redis-server' do
    action :install
end

template "/etc/redis/redis.conf" do
    source        "redis.conf.erb"
    owner         "root"
    group         "root"
    mode          "0644"
    variables     :redis => node[:redis], :redis_server => node[:redis][:server]
end

service 'redis-server' do
    supports :status => true, :restart => true, :reload => true
    action [:enable, :start]
end
  