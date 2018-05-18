class BerthOrdersController < LoggedInController
  before_action :set_berth_order, only: [:show, :edit, :update, :destroy]


  # GET /berth_orders
  # GET /berth_orders.json
  def index
    if current_user.admin?
      @berth_orders = BerthOrder.all
    else
      @berth_orders = current_user.berth_orders
    end
  end

  # GET /berth_orders/1
  # GET /berth_orders/1.json
  def show
  end

  # GET /berth_orders/new
  def new
    @berth_order = BerthOrder.new
    @boat = Boat.new
    @user_boats = current_user.boats
    @current_seasons = Season.bookable_seasons
  end

  # GET /berth_orders/1/edit
  def edit
    season_id = BerthOrder.find(params[:id]).season_id
    @available_berths = Season.find(season_id).berths - BerthOrder.where(season_id: season_id, status_id: 1).count
    @status = Status.all # Godkjent, Under Behandling, Avvist
    @current_seasons = Season.all # TODO: nåværende sesong + 3 sesonger fremover
  end

  # POST /berth_orders
  # POST /berth_orders.json
  def create
    @berth_order = BerthOrder.new
    @berth_order.status = Status.find_by(status: "Under behandling")
    if berth_order_params["boat_id"].empty?
      @boat = Boat.new
      @boat.name = params[:boat][:name]
      @boat.width = params[:boat][:width]
      @boat.user = current_user
      @boat.save
      @berth_order.boat_id = Boat.find(@boat.id)
    else
      @berth_order.boat_id = berth_order_params[:boat_id]
    end

    @berth_order.season_id = berth_order_params[:season_id]
    respond_to do |format|
      if @berth_order.save
        format.html { redirect_to @berth_order, notice: 'Berth order was successfully created.' }
        format.json { render :show, status: :created, location: @berth_order }
      else
        format.html { render :new }
        format.json { render json: @berth_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /berth_orders/1
  # PATCH/PUT /berth_orders/1.json
  def update
    respond_to do |format|
      if @berth_order.update(berth_order_params)
        format.html { redirect_to @berth_order, notice: 'Berth order was successfully updated.' }
        format.json { render :show, status: :ok, location: @berth_order }
      else
        format.html { render :edit }
        format.json { render json: @berth_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /berth_orders/1
  # DELETE /berth_orders/1.json
  def destroy
    @berth_order.destroy
    respond_to do |format|
      format.html { redirect_to berth_orders_url, notice: 'Berth order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_berth_order
      @berth_order = BerthOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def berth_order_params
      params.require(:berth_order).permit(:boat_id, :season_id)
    end

end
