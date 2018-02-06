class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
#  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
     
    if (resource.user_level == 0 )
      edit_user_registration_path # rails routes -> hent ruta + suffix: _path
      # send til profilside
    elsif (resource.user_level == 1)
      # send til adminside
      home_path
    elsif (resource.user_level == 2)
      contact_path
    else
      raise "Wrong user-level"
    end
  end

end
