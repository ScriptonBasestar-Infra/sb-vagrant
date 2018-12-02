#
# Cookbook:: setup-mysql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

mysql_service 'default' do
    version '5.7'
    bind_address '0.0.0.0'
    port '3306'
    # data_dir '/data'
    initial_root_password 'passw0rd'
    action [:create, :start]
end

# mysql_config 'default' do
#     source 'my_extra_settings.erb'
#     notifies :restart, 'mysql_service[default]'
#     action :create
# end

# mysql_client 'default' do
#     action :create
# end

## for rails
# # MySQL用のプロバイダー
# mysql2_chef_gem 'default' do
#     action :install
# end
  
# # MySQL接続情報
# mysql_connection_info ={
#     host: 'localhost',
#     username: 'root',
#     socket: '/var/run/mysql-default/mysqld.sock',
#     password: 'password'
# }

# # データベース作成
# mysql_database 'app' do
#     connection mysql_connection_info
#     action :create
# end

# # 管理用ユーザー追加
# mysql_database_user 'admin' do
#     connection mysql_connection_info
#     password 'admin_user_password'
#     database_name app
#     privileges [:all]
#     action [:create, :grant]
# end

# # 一般ユーザー追加
# mysql_database_user 'app_user' do
#     connection mysql_connection_info
#     password 'app_user_password'
#     # 権限はレコードの参照, 更新, 挿入, 削除のみ
#     privileges [:select, :update, :insert, :delete]
#     action [:create, :grant]
# end