#
# Cookbook Name:: dop_mysql
# Recipe:: mysql
#
include_recipe "mysql::server"
include_recipe "mysql::client"
include_recipe "database"
include_recipe "database::mysql"

# configure mysql
template "#{node['mysql']['confd_dir']}/custom.cnf" do
  source "my.cnf.erb"
  variables(
  	:mysql => node['mysql']['my_cnf']
  )
  owner "mysql"
  group "mysql"
  mode 0644
  notifies :restart, "mysql_service[default]"
end