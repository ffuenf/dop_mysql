# # # # # # # # # #
# automysqlbackup #
# # # # # # # # # #
default['automysqlbackup']['bin_path'] = '/usr/bin/'
default['automysqlbackup']['backup_dir'] = '/var/mysqlbackups'
default['automysqlbackup']['config'] = node['dop_base']['hosts']['hostname']
default['automysqlbackup']['mysql_dump_username'] = 'automysqlbackup'
default['automysqlbackup']['mysql_dump_password'] = 'insecure'
default['automysqlbackup']['mysql_dump_latest'] = 'yes'
default['automysqlbackup']['mysql_dump_latest_clean_filenames'] = 'yes'
default['automysqlbackup']['encrypt'] = 'no'
default['automysqlbackup']['encrypt_password'] = 'insecure'
default['automysqlbackup']['user'] = 'automysqlbackup'
default['automysqlbackup']['group'] = 'automysqlbackup'
default['automysqlbackup']['secure_backups'] = false
default['automysqlbackup']['db_exclude'] = %w[
  information_schema
  performance_schema
  mysql
]

default['automysqlbackup']['server']['bind_address'] = '127.0.0.1'
default['automysqlbackup']['server']['port'] = 3_306
