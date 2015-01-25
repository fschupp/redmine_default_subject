class DefaultSubjectIssueHook < Redmine::Hook::ViewListener
  def view_issues_form_details_top(context = {})
    # We only want to modify new issues; new issues haven't been assigned an id
    return  if not context[:issue].id.nil?

    if  context[:issue].subject.blank?
      context[:issue].subject = "<no subject>"
    end

    nil
  end  
end
