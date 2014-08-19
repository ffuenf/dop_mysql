# # # # # #
# default #
# # # # # #
default['dop_mysql']['databag'] = Chef::EncryptedDataBagItem.load('passwords', 'mysql')

default['dop_mysql']['flavor'] = 'mysql'

include_attribute 'dop_mysql::mysql'
include_attribute 'dop_mysql::percona'
include_attribute 'dop_mysql::automysqlbackup'
include_attribute 'dop_mysql::mysqltuner'
include_attribute 'dop_mysql::mysqlreport'
