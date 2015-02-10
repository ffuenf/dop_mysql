#
# Cookbook Name:: dop_mysql
# Recipe:: default
#

include_recipe 'chef-sugar'
include_recipe 'dotdeb' if debian?
include_recipe 'dop_mysql::mysql'
include_recipe 'dop_mysql::logrotate'
