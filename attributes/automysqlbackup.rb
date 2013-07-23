# # # # # # # # # #
# automysqlbackup #
# # # # # # # # # #
node.default['automysqlbackup']['databag'] = Chef::EncryptedDataBagItem.load("passwords", "automysqlbackup")

node.default['automysqlbackup']['bin_path'] = "/usr/bin/"
node.default['automysqlbackup']['backup_dir'] = "#{node['users']['service']['home']}/mysqlbackups"
node.default['automysqlbackup']['config'] = node['dop_base']['hosts']['hostname']
node.default['automysqlbackup']['mysql_dump_username'] = node['automysqlbackup']['databag']['username']
node.default['automysqlbackup']['mysql_dump_password'] = node['automysqlbackup']['databag']['password']
node.default['automysqlbackup']['mysql_dump_latest'] = 'yes'
node.default['automysqlbackup']['mysql_dump_latest_clean_filenames'] = 'yes'
node.default['automysqlbackup']['encrypt'] = 'no'
node.default['automysqlbackup']['encrypt_password'] = node['automysqlbackup']['databag']['encrypt_password']
node.default['automysqlbackup']['user'] = node['users']['service']['name']
node.default['automysqlbackup']['group'] = node['users']['service']['name']
node.default['automysqlbackup']['secure_backups'] = false
node.default['automysqlbackup']['db_exclude'] = [
	'information_schema',
	'performance_schema',
	'mysql'
]

node.default['automysqlbackup']["server"]["bind_address"] = "127.0.0.1"
node.default['automysqlbackup']["server"]['port'] = 3306
node.default['automysqlbackup']['server_root_password'] = node['dop_mysql']['databag']['root']