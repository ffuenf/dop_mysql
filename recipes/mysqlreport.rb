#
# Cookbook Name:: dop_mysql
# Recipe:: mysqlreport
#

mysqlreport_src_filename = 'mysqlreport'
mysqlreport_src_filepath = "#{Chef::Config['file_cache_path']}/#{mysqlreport_src_filename}"
remote_file mysqlreport_src_filepath do
  source node['mysqlreport']['source']
  owner 'root'
  group 'root'
  mode 0755
end
bash 'install mysqlreport' do
  cwd ::File.dirname(mysqlreport_src_filepath)
  code <<-EOH
  mv #{mysqlreport_src_filepath} /usr/bin/#{mysqlreport_src_filename}
  chmod +x /usr/bin/#{mysqlreport_src_filename}
  EOH
end
