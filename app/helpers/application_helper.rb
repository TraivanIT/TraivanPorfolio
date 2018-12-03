module ApplicationHelper
  def time_ago time
    "#{time_ago_in_words(time)} ago"
  end
  def distance_time time
    "#{distance_of_time_in_words(time)} ago"
  end

  def login_helper style = ''
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
  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
       {
        url: about_traivan_path,
        title: 'About'
      },
       {
        url: contact_path,
        title: 'Contact'
      },
       {
        url: blogs_path,
        title: 'Blogs'
      },
       {
        url: portfolios_path,
        title: 'Portfolios'
      }
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'> #{item[:title]} </a></#{tag_type}>"
    end

    nav_links.html_safe  

  end

  def active? path
    "active" if current_page? path
  end

  def alerts
    alert = (flash[:alert]|| flash[:errors] || flash[:notice])

    if alert
     alert_generator(alert)
    end
  end

  def alert_generator(msg)
    js add_gritter(msg, title: "Traivan Portfolio" , sticky: false) 
  end















end