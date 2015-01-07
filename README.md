dop_mysql
=========
[![GitHub tag](http://img.shields.io/github/tag/ffuenf/dop_mysql.svg)][tag]
[![Build Status](http://img.shields.io/travis/ffuenf/dop_mysql.svg)][travis]
[![Gittip](http://img.shields.io/gittip/arosenhagen.svg)][gittip]

[tag]: https://github.com/ffuenf/dop_mysql/tags
[travis]: https://travis-ci.org/ffuenf/dop_mysql
[gittip]: https://www.gittip.com/arosenhagen

dop_mysql installs mysql either in oracle or percona flavor. Includes recipes for automysqlbackup, mysqltuner and mysqlreport.

Dependencies
------------

This cookbook depends on the following community cookbooks.

* dop_base
* mysql
* database
* automysqlbackup

Platform
--------

The following platforms are supported and tested:

* Debian 6.x
* Debian 7.x
* Ubuntu 14.04.x
* Ubuntu 14.10.x

Other Debian family distributions are assumed to work.

Data_bags
---------

We assume to use an encrypted databag which holds sensitive user information with the following convention (derived from the opscode user cookbook):
```
{ 
  "id": "mysql", 
  "root": "insecurepassword",
  "debian": "insecurepassword",
  "backup": "insecurepassword",
  "replication": "insecurepassword"
}
{ 
  "id": "automysqlbackup", 
  "username": "automysqlbackup", 
  "password": "insecurepassword", 
  "encrypt_password": "insecurepassword"
}
```

Development
-----------
1. Fork the repository from GitHub.
2. Clone your fork to your local machine:

        $ git clone git@github.com:USER/dop_mysql.git

3. Create a git branch

        $ git checkout -b my_bug_fix

4. **Write tests**
5. Make your changes/patches/fixes, committing appropriately
6. Run the tests: `rake style`, `rake spec`, `rake integration:vagrant`
7. Push your changes to GitHub
8. Open a Pull Request

Testing
-------

The following Rake tasks are provided for automated testing of the cookbook:

```
$ rake -T
rake integration:cloud    # Run Test Kitchen with cloud plugins
rake integration:vagrant  # Run Test Kitchen with Vagrant
rake spec                 # Run ChefSpec examples
rake style                # Run all style checks
rake style:chef           # Lint Chef cookbooks
rake style:ruby           # Run Ruby style checks
rake travis               # Run all tests on Travis
```
See TESTING.md for detailed information.

License and Author
------------------

- Author:: Achim Rosenhagen (<a.rosenhagen@ffuenf.de>)

- Copyright:: 2015, ffuenf

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
