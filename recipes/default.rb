#
# Cookbook Name:: dop_mysql
# Recipe:: default
#

include_recipe 'dop_base'

include_recipe 'dop_mysql::percona' if node['dop_mysql']['flavor'] == 'percona'
include_recipe 'dop_mysql::mysql' if node['dop_mysql']['flavor'] == 'mysql'
include_recipe 'database'
include_recipe 'database::mysql'
include_recipe 'dop_mysql::mysqltuner' if node['dop_mysql']['mysqltuner']['enable']
include_recipe 'dop_mysql::mysqlreport' if node['dop_mysql']['mysqlreport']['enable']
include_recipe 'dop_mysql::automysqlbackup' if node['dop_mysql']['automysqlbackup']['enable']
