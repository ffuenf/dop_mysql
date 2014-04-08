maintainer       "Achim Rosenhagen"
maintainer_email "a.rosenhagen@ffuenf.de"
license          "Apache 2.0"
description      "installs/configures dop_mysql"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "2.0.1"

%w{ debian }.each do |os|
  supports os
end

%w{ 
  mysql
  database
  automysqlbackup
  }.each do |ressource|
  depends ressource
end

%w{ 
  percona
  phpmyadmin
  }.each do |ressource|
  recommends ressource
end

recipe "dop_mysql::default", "includes all recipes of cookbook dop_mysql"
