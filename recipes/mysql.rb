#
# Cookbook Name:: dop_mysql
# Recipe:: mysql
#

node.default['mysql']['server_root_password'] = node['dop_mysql']['databag']['root']

mysql2_chef_gem 'default' do
  action :install
end

if debian?
  mysql_service 'default' do
    bind_address node['mysql']['bind_address']
    port node['mysql']['port']
    package_name node['mysql']['dotdeb']['server']['name']
    package_version node['mysql']['dotdeb']['server']['version']
    initial_root_password node['dop_mysql']['databag']['root']
    action [:create, :start]
  end
else
  mysql_service 'default' do
    bind_address node['mysql']['bind_address']
    port node['mysql']['port']
    initial_root_password node['dop_mysql']['databag']['root']
    action [:create, :start]
  end
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

if debian?
  mysql_client 'default' do
    package_name node['mysql']['dotdeb']['client']['name']
    package_version node['mysql']['dotdeb']['client']['version']
    action :create
  end
else
  mysql_client 'default' do
    action :create
  end
end
