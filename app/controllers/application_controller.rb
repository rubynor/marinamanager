class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
#  before_action :authenticate_user!

protected
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to home_path, :notice => 'Må være logget inn for dette'
    end
  end
end
