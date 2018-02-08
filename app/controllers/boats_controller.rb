class BoatsController < ApplicationController

	def new
		@boat = Boat.new
	end

	def index
		@boats = Boat.all
	end
	
	def show
		@boat = Boat.find(params[:id])
	end
	
	def edit
		@boat = Boat.find(params[:id])
	end

	def create
		#-render plain: params[:boat].inspect
		@boat = Boat.new(valid_params)
		if @boat.save
			flash[:info] = "The boat was added to the database"
			redirect_to boats_path
		else
			flash[:error] = "The boat was NOT added due to an error"
			render 'new'
		end

	end

	def update
		@boat = Boat.find(params[:id])
		if @boat.update_attributes(valid_params)
		  flash[:success] = "Boat updated"
		  redirect_to boats_path
		else
		  render 'edit'
		end
	end

	def destroy

		#Yes, needs check for admin rights
		@boat = Boat.find(params[:id])
		if @boat.delete
		  flash[:success] = "Boat deleted"
		  redirect_to boats_path
		else
		  render 'delete'
		end
	  end

	private
	def valid_params
		params.require(:boat).permit(:reg_nr, :model, :width, :length)
	end
end
