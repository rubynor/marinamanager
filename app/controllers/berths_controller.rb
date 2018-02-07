class BerthsController < ApplicationController
  def new
    @berth = Berth.new
  end

  def create
    @berth = Berth.new(berth_params)
    if @berth.save
      flash[:info] = "Berth saved"
      redirect_to root_url
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
      redirect_to root_url
    else
      render 'edit'
    end
  end
  
  def delete

    #Yes, needs check for admin rights
    @berth = Berth.find(params[:id])
    if @berth.delete
      flash[:success] = "Berth deleted"
    else
      render 'delete'
    end
  end

private

  def berth_params
    params.require(:berth).permit(:id, :name, :pier, :width, :reg_nr, :price_per_month)


  end
end