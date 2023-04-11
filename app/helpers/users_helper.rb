module UsersHelper

def error_messages_for(attribute)
  if @user.errors[attribute].any?
    content_tag(:div, class: 'alert alert-danger') do
      @user.errors[attribute].join(', ')
    end
  end
end
end