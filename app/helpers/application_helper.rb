module ApplicationHelper
  def time_ago time
    "#{time_ago_in_words(time)} ago"
  end
  def distance_time time
    "#{distance_of_time_in_words(time)} ago"
  end

  def login_helper style
    if current_user.is_a?(GuestUser) 
      (link_to 'Login', new_user_session_path , class: style) + (link_to 'Register', new_user_registration_path, class: style)
    else 
      link_to('Logout', destroy_user_session_path, method: :delete ,class: style)
    end 
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thank for visiting me from: #{ session[:source]} and you are on #{layout_name} layout"
      content_tag(:h2 , greeting, class: "source")
    end
  end

  def copyright_generator
    TraivanViewTool::Renderer.copyright 'Traivan Von', 'All right reserved'
  end

end
