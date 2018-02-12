class UserController < ApplicationController
  def dashboard
    @boats = Boat.all
    @services = Service.all
    @service_orders = Service_Orders.all
  end
end
