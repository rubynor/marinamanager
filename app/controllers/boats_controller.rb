class BoatsController < ApplicationController

	def new

	end

	def create
		render plain: params[:boat].inspect
	end

	def show

	end

end
