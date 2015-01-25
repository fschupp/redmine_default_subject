require 'redmine'

require 'redmine_default_subject/hooks/default_subject_issues_hooks.rb'

Redmine::Plugin.register :redmine_default_subject do
  name 'Default Subject Plugin'
  author 'Felix Schupp'
  description 'Set the subject of an issue to "No subject assigned".'
  version '0.1'
end
