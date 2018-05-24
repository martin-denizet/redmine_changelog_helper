# module RedmineChangelogHelper
#   module WikiPagePatch
#     def self.included(base) # :nodoc:
#       base.send(:include, InstanceMethods)
#       base.class_eval do
#         unloadable # Send unloadable so it will not be unloaded in development
#
#       end
#     end
#
#     module InstanceMethods
#
#
#     end
#   end
# end
#
# WikiPage.send(:include, RedmineChangelogHelper::WikiPagePatch)
WikiPage.safe_attributes 'is_changelog'