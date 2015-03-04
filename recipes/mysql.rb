#
# Cookbook Name:: dop_mysql
# Recipe:: mysql
#

node.default['mysql']['server_root_password'] = node['dop_mysql']['databag']['root']
if debian?
  node.default['mysql']['server']['name'] = node.default['mysql']['dotdeb']['server']['name']
  node.default['mysql']['server']['version'] = node.default['mysql']['dotdeb']['server']['version']
  node.default['mysql']['client']['name'] = node.default['mysql']['dotdeb']['client']['name']
  node.default['mysql']['client']['version'] = node.default['mysql']['dotdeb']['client']['version']
end

mysql2_chef_gem 'default' do
  action :install
end

mysql_service 'default' do
  bind_address node['mysql']['bind_address']
  port node['mysql']['port']
  package_name node['mysql']['server']['name'] if debian?
  package_version node['mysql']['server']['version'] if debian?
  initial_root_password node['dop_mysql']['databag']['root']
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
  package_name node['mysql']['client']['name'] if debian?
  package_version node['mysql']['client']['version'] if debian?
  action :create
end
