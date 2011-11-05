module ApplicationHelper

  def logout_link
    link_to("Logout", sessions_path, method: :delete) unless current_user.nil?
  end

end
