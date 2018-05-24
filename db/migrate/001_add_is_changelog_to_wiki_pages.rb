#
# Copyright (C) 2018 Martin Denizet <martin.denizet@supinfo.com>
#
class AddIsChangelogToWikiPages < ActiveRecord::Migration
  def change
    add_column :wiki_pages, :is_changelog, :boolean, default: false
  end
end
