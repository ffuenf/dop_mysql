#
# Cookbook Name:: dop_magento
# Recipe:: automysqlbackup
#

node.normal['automysqlbackup']['databag'] = data_bag_item('passwords', 'automysqlbackup')
node.normal['dop_mysql']['databag'] = data_bag_item('passwords', 'mysql')
node.normal['automysqlbackup']['backup_dir'] = "#{node['users']['service']['home']}/mysqlbackups"
node.normal['automysqlbackup']['user'] = node['users']['service']['username']
node.normal['automysqlbackup']['group'] = node['users']['service']['username']
node.normal['automysqlbackup']['encrypt_password'] = node['automysqlbackup']['databag']['encrypt_password']
node.normal['automysqlbackup']['server_root_password'] = node['dop_mysql']['databag']['root']

include_recipe 'automysqlbackup'

# create automysqlbackup directory
directory node['automysqlbackup']['backup_dir'] do
  owner node['users']['service']['username']
  group node['users']['service']['username']
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
  privileges ['all']
  action :grant
end
