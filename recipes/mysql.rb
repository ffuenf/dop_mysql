#
# Cookbook Name:: dop_mysql
# Recipe:: mysql
#

node.default['mysql']['server_root_password'] = node['dop_mysql']['databag']['root']

mysql2_chef_gem 'default' do
  action :install
end

mysql_service 'default' do
  bind_address node['mysql']['bind_address']
  port node['mysql']['port']
  initial_root_password node['dop_mysql']['databag']['root']
  version node['mysql']['version']
  action [:create, :start]
end

mysql_config 'custom' do
  instance 'default'
  source 'custom.cnf.erb'
  variables(
    mysql: node['mysql']['custom_cnf']
  )
  notifies :restart, 'mysql_service[default]'
  action :create
end

mysql_client 'default' do
  action :create
end
