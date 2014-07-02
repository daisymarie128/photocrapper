module ApplicationHelper
  def smartnav
    links = ''
    if @current_user.try(:is_admin)
      links += "<li>" + link_to('View users', users_path) + "</li>"
    end

    if @current_user.present?
      links += "<li>"
      links += link_to('Logout ' + @current_user.username, login_path, :data => {:method => :delete, :confirm => 'Really logout?'})
      links += "</li>"
    else
      links += "<li>#{ link_to('Sign up', new_user_path) }</li>"
      links += "<li>#{ link_to('Sign in', login_path) }</li>"
    end

    links
  end

  def usernav

    links = '<div id="usernav">'

    if @current_user.present?

    links += "<li>" + link_to('Home', '/') + "</li>"
    links += "<li>" + link_to('Explore', '/explore' ) + "</li>"
    links += "<li>" + link_to('Notifications', '#') + "</li>"
    links += "<li>" + link_to('My Stuff', works_path) + "</li>"
    links += "<li>" + link_to('Upload', new_work_path) + "</li>"

  end
      links + '</div>'
  end

end