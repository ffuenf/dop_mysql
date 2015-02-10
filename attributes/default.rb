# # # # # #
# default #
# # # # # #
default['dop_mysql']['databag'] = Chef::EncryptedDataBagItem.load('passwords', 'mysql')

include_attribute 'dop_mysql::mysql'
include_attribute 'dop_mysql::automysqlbackup'
include_attribute 'dop_mysql::percona_tools'
