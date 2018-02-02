class BoatsController < ApplicationController

	def new
		@boat = Boat.new
	end

	def create
		#-render plain: params[:boat].inspect
		@boat = Boat.new(valid_params)
		if @boat.save
			flash[:info] = "The boat was added to the database"
			redirect_to root_url
		else
			flash[:error] = "The boat was NOT added due to an error"
			render 'new'
		end

	end

	def show

	end
	private
	def valid_params
		params.require(:boat).permit(:reg_nr, :model, :width, :length)
	end
end
