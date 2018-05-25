# Redmine Changelog Helper

Plugin sponsored by MeiSystem at http://meisystem.com/

## Features

* Helps formatting changelog input
* Hierarchical display of changes 

## Compatibility

Tested working with Ruby 2.3.x on:
* Redmine 3.4.x
* Redmine 3.3.x

## Downloading and installing the plugin

First download the plugin using git, open a terminal in your Redmine installation directory:

```cd ./plugins/
git clone https://github.com/martin-denizet/redmine_changelog_helper.git```


Run the database migrations:

```RAILS_ENV=production bundle exec rake redmine:plugins:migrate```

The installation is now finished and you will be able to use the plugin after you restart your Redmine instance.


## Configuration

Please check the plugin configuration page before using it.

## Usage

Edit a Wiki page and tick "Is changelog page" checkbox.

## How to contribute

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

*Please do not make your pull requests on the master branch.*

### License

GPLv2

Copyright (C) 2018 Martin Denizet <martin.denizet@supinfo.com>

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.