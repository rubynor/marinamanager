class ApplicationController < ActionController::Base

  # before_action :set_locale

  protect_from_forgery with: :exception

  protected
  def after_sign_in_path_for(resource)
    if current_user.admin?
      berth_orders_path
    else
      new_berth_order_path
    end
  end


end