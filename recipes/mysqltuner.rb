#
# Cookbook Name:: dop_mysql
# Recipe:: mysqltuner
#

mysqltuner_src_filename = "mysqltuner.pl"
mysqltuner_src_filepath = "#{Chef::Config['file_cache_path']}/#{mysqltuner_src_filename}"
remote_file mysqltuner_src_filepath do
	source node['mysqltuner']['source']
	owner 'root'
	group 'root'
	mode 0755
end
bash 'install mysqltuner' do
	cwd ::File.dirname(mysqltuner_src_filepath)
	code <<-EOH
		mv #{mysqltuner_src_filepath} /usr/bin/#{mysqltuner_src_filename}
		chmod +x /usr/bin/#{mysqltuner_src_filename}
	EOH
end