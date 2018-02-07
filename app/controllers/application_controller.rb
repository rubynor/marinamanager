class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
#  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if resource.user_level == 1
      admin_index_path
    elsif resource.user_level == 0
      user_dashboard_path
    else
      home_path
    end
  end
 

end
