#
# Cookbook Name:: dop_mysql
# Recipe:: logrotate
#

logrotate_app 'mysql' do
  path '/var/log/mysql/*.log'
  frequency 'daily'
  rotate 2
  options %w(missingok compress delaycompress notifempty sharedscripts)
  create "640 #{node['mysql']['user']} adm"
end
