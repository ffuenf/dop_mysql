#
# Cookbook Name:: dop_magento
# Recipe:: automysqlbackup
#

node.set['automysqlbackup']['databag'] = Chef::EncryptedDataBagItem.load('passwords', 'automysqlbackup')
node.set['automysqlbackup']['backup_dir'] = "#{node['users']['service']['home']}/mysqlbackups"
node.set['automysqlbackup']['user'] = node['users']['service']['username']
node.set['automysqlbackup']['group'] = node['users']['service']['username']
node.set['automysqlbackup']['encrypt_password'] = node['automysqlbackup']['databag']['encrypt_password']
node.set['automysqlbackup']['server_root_password'] = node['automysqlbackup']['databag']['password']

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
  privileges [:all]
  action :grant
end
