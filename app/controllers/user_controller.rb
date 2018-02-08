class UserController < ApplicationController
  def dashboard
    @boats = Boat.all
    @services = Service.all
  end
end
