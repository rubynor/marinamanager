class AdminController < ApplicationController
  
  def dashboard
    unless user_signed_in? && current_user.user_level == 1
      redirect_to root_path, notice: "Not an admin"
    end
  end  


end
