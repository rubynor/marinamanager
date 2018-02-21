class UserController < ApplicationController


  def dashboard
    @boats = Boat.all
    @services = Service.all
    @service_orders = ServiceOrder.all
  end

  def index
  end

end
