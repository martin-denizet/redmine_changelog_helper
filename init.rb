#
# Copyright (C) 2018 Martin Denizet <martin.denizet@supinfo.com>
#

# Rails.application.config.assets.precompile += %w( redmine_changelog_helper.js )

Rails.configuration.to_prepare do

  require_dependency 'redmine_changelog_helper/wiki_page_patch'
  require_dependency 'redmine_changelog_helper/hooks'

end

Redmine::Plugin.register :redmine_changelog_helper do
  name 'Redmine Changelog helper'
  author 'Martin DENIZET'
  description 'JavaScript helper to standardize Changelog editing as a Wiki page'
  version '0.1.0'
  url 'https://github.com/martin-denizet/redmine_changelog_helper'
  author_url 'https://uptimeowl.io'

  requires_redmine :version_or_higher => '3.3.0'

  settings :default => {
      machines: 'all:All
noblock:NoBlock
block:Block
tba:TBA
tba-noblock:TBA & NoBlock'
  },
           :partial => 'settings/redmine_changelog_helper'

end