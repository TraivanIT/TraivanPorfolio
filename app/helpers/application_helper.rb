module ApplicationHelper
  def time_ago time
    "#{time_ago_in_words(time)} ago"
  end

  def login_helper
    if current_user.is_a?(User) 
      link_to('Logout', destroy_user_session_path, method: :delete) 
    else 
      (link_to 'Login', new_user_session_path) + (link_to 'Register', new_user_registration_path)
    end 
  end

end
