#
# Cookbook:: setup-redis
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_repository 'nimf' do
    uri          'ppa:hodong/nimf'
end

apt_package %w(nimf nimf-anthy niumf-chewing nimf-dev nimf-libhangul nimf-rime) do
    action :install
end
