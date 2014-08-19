# # # # # # # # # #
# automysqlbackup #
# # # # # # # # # #
default['automysqlbackup']['databag'] = Chef::EncryptedDataBagItem.load('passwords', 'automysqlbackup')

default['automysqlbackup']['enable'] = true
default['automysqlbackup']['bin_path'] = '/usr/bin/'
default['automysqlbackup']['backup_dir'] = "#{node['users']['service']['home']}/mysqlbackups"
default['automysqlbackup']['config'] = node['dop_base']['hosts']['hostname']
default['automysqlbackup']['mysql_dump_username'] = node['automysqlbackup']['databag']['username']
default['automysqlbackup']['mysql_dump_password'] = node['automysqlbackup']['databag']['password']
default['automysqlbackup']['mysql_dump_latest'] = 'yes'
default['automysqlbackup']['mysql_dump_latest_clean_filenames'] = 'yes'
default['automysqlbackup']['encrypt'] = 'no'
default['automysqlbackup']['encrypt_password'] = node['automysqlbackup']['databag']['encrypt_password']
default['automysqlbackup']['user'] = node['users']['service']['name']
default['automysqlbackup']['group'] = node['users']['service']['name']
default['automysqlbackup']['secure_backups'] = false
default['automysqlbackup']['db_exclude'] = %w(
  information_schema
  performance_schema
  mysql
)

default['automysqlbackup']['server']['bind_address'] = '127.0.0.1'
default['automysqlbackup']['server']['port'] = 3_306
default['automysqlbackup']['server_root_password'] = node['dop_mysql']['databag']['root']
