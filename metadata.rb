maintainer 'Achim Rosenhagen'
maintainer_email 'a.rosenhagen@ffuenf.de'
license 'Apache 2.0'
description 'installs/configures dop_mysql'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
name 'dop_mysql'
version '3.2.1'
issues_url 'https://github.com/ffuenf/dop_mysql/issues'
source_url 'https://github.com/ffuenf/dop_mysql'

%w(debian ubuntu).each do |os|
  supports os
end

%w(
  apt
  dop_base
  dotdeb
  mysql
  database
  automysqlbackup
  mysql2_chef_gem
  chef-sugar
).each do |ressource|
  depends ressource
end
