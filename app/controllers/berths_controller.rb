class BerthsController < ApplicationController
  def new
    @berth = Berth.new
  end

  def index
    @berths = Berth.all
  end

  def show
    @berth = Berth.find(params[:id])
  end

  def create
    @berth = Berth.new(berth_params)
    if @berth.save
      flash[:info] = "Berth saved"
      redirect_to berths_path
    else
      render 'new'
    end
  end

  def edit
    @berth = Berth.find(params[:id])
  end

  def update
    @berth = Berth.find(params[:id])
    if @berth.update_attributes(berth_params)
      flash[:success] = "Berth updated"
      redirect_to berths_path
    else
      render 'edit'
    end
  end
  
  def destroy

    #Yes, needs check for admin rights
    @berth = Berth.find(params[:id])
    if @berth.delete
      flash[:success] = "Berth deleted"
      redirect_to berths_path
    else
      render 'delete'
    end
  end

private

  def berth_params
    params.require(:berth).permit(:id, :name, :pier, :width, :reg_nr, :price_per_month)


  end
end