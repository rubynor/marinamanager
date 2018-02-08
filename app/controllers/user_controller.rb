class UserController < ApplicationController
  def dashboard
    @services = Service.all
    @boats = Boat.all
  end
end
