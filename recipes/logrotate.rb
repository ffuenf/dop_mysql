#
# Cookbook Name:: dop_mysql
# Recipe:: logrotate
#

logrotate_app "mysql" do
	cookbook "logrotate"
	path "/var/log/mysql/*.log"
	frequency "daily"
	rotate 2
	options ["missingok", "compress", "delaycompress", "notifempty", "sharedscripts"]
	create "640 #{node['mysql']['user']} adm"
end
