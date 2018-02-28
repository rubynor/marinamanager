class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

protected
  def after_sign_in_path_for(resource)
    if resource.user_level.present?
      index_path
    else
      home_path
    end
  end

end
