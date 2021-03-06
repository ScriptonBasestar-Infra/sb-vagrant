#
# Cookbook:: setup-redis
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package %w(zsh guake) do
    action :install
end

# https://github.com/shingara/oh-my-zsh-chef
git "/usr/src/oh-my-zsh" do
    repository "https://github.com/robbyrussell/oh-my-zsh.git"
    reference "master"
    action :sync
end

search( :users, "shell:*zsh" ).each do |u|
    user_id = u["id"]
  
    theme = data_bag_item( "users", user_id )["oh-my-zsh-theme"]
  
    link "/home/#{user_id}/.oh-my-zsh" do
        to "/usr/src/oh-my-zsh"
        not_if "test -d /home/#{user_id}/.oh-my-zsh"
        only_if { ::File.exists?("/home/#{user_id}") }
    end
  
    template "/home/#{user_id}/.zshrc" do
        source "system_zshrc.erb"
        owner user_id
        group user_id
        variables( :theme => ( theme || node[:ohmyzsh][:theme] ))
        action :create_if_missing
        only_if { ::File.exists?("/home/#{user_id}") }
    end

    execute "zsh default shell" do
        # command "chsh -s $(which zsh) #{user_id}"
        command "chsh -s $(which zsh)"
    end
end
