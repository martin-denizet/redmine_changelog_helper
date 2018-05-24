#
# Copyright (C) 2018 Martin Denizet <martin.denizet@supinfo.com>
#
module RedmineChangelogHelper
  class RedmineChangelogHelperHookListener < Redmine::Hook::ViewListener
    def build_settings_map(string)
      map={}
      string.split(/\n/).each { |l| map[l.split(':').first]=(l.split(':').size>1 ? l.split(':').last : '').strip } if string
      return map
    end

    def view_layouts_base_html_head(context)
      #javascript_include_tag 'redmine_changelog_helper', :plugin => 'redmine_changelog_helper'
      machines = build_settings_map(Setting.plugin_redmine_changelog_helper['machines'])
      types = build_settings_map(Setting.plugin_redmine_changelog_helper['types'])
      subtypes = build_settings_map(Setting.plugin_redmine_changelog_helper['subtypes'])
      importances = build_settings_map(Setting.plugin_redmine_changelog_helper['importances'])

      context[:controller].render partial: 'redmine_changelog_helper/script', locals: {machines: machines, types: types, subtypes: subtypes, importances: importances}
    end
  end
end