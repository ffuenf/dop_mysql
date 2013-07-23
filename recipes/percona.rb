#
# Cookbook Name:: dop_mysql
# Recipe:: percona
#
include_recipe "percona::package_repo"
include_recipe "percona::server"
include_recipe "percona::toolkit"