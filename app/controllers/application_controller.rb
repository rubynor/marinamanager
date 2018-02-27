class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
#  before_action :authenticate_user!

protected
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to index_path, :notice => 'Må være logget inn for dette'
    end
  end

  def after_sign_in_path_for(resource)
    if resource.user_level.present?
      index_path
    else
      home_path
    end
  end

end
