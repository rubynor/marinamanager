class MarinaController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
  end

  def home
  end

  def berths
  end

  def boatramp
  end

  def services
  end

  def contact
  end
end
