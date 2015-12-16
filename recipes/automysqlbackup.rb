#
# Cookbook Name:: dop_magento
# Recipe:: automysqlbackup
#

include_recipe 'automysqlbackup'

# create automysqlbackup directory
directory "#{node['users']['service']['home']}/mysqlbackups" do
  owner node['users']['service']['name']
  group node['users']['service']['group']
  action :create
end

database_user = node['automysqlbackup']['databag']['username']
database_password = node['automysqlbackup']['databag']['password']
database_host = node['automysqlbackup']['server']['bind_address']
database_port = node['automysqlbackup']['server']['port']
database_connection = {
  host: database_host,
  port: database_port,
  username: 'root',
  password: node['automysqlbackup']['server_root_password']
}

# create the automysqlbackup database user
mysql_database_user database_user do
  connection database_connection
  host database_host
  password database_password
  action :create
end
# grant all privileges to user on database
mysql_database_user database_user do
  connection database_connection
  host database_host
  privileges [:all]
  action :grant
end
