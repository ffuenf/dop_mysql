# # # # # #
# default #
# # # # # #
node.default['dop_mysql']['databag'] = Chef::EncryptedDataBagItem.load("passwords", "mysql")

node.default['dop_mysql']['flavor'] = "mysql"
node.default['dop_mysql']['mysqltuner'] = true
node.default['dop_mysql']['mysqlreport'] = true
node.default['dop_mysql']['automysqlbackup'] = true

include_attribute "dop_mysql::mysql"
include_attribute "dop_mysql::percona"
include_attribute "dop_mysql::automysqlbackup"
include_attribute "dop_mysql::mysqltuner"
include_attribute "dop_mysql::mysqlreport"
