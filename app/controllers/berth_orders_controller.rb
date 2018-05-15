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

  # GET /berth_orders/1/edit
  def edit
    season_id = BerthOrder.find(params[:id]).season_id
    @available_berths = Season.find(season_id).berths - BerthOrder.where(season_id: season_id, status_id: 1).count
    @status = Status.all # Godkjent, Under Behandling, Avvist
    @current_seasons = Season.all # TODO: nåværende sesong + 3 sesonger fremover
  end

  # GET /berth_orders/new
  def new
    session[:berth_order_params] ||= {}
    @berth_order = BerthOrder.new
    @user_boats = current_user.boats
    session[:berth_order_step] = @berth_order.first_step
  end

  # POST /berth_orders
  # POST /berth_orders.json
  def create
    # Om session-variabel: Hva med å heller lagre ordren tidlig i databasen,
    # og heller flytte dette til Update? Eller lagre dataene i hidden fields?
    # Om metoden som helhet - bør refaktoreres, men hvordan?
    session[:berth_order_params].deep_merge!(params[:berth_order]) if params[:berth_order]
    @berth_order = BerthOrder.new(session[:berth_order_params])
    # set default status
    @berth_order.status = Status.find_by!(status: 'Under behandling')
    @user_boats = current_user.boats
    @berth_order.current_step = session[:berth_order_step]
    if params[:back_button]
      @berth_order.previous_step
    elsif @berth_order.last_step?
      @berth_order.save if @berth_order.all_valid?
    else
      @berth_order.next_step
    end
    session[:berth_order_step] = @berth_order.current_step
    if @berth_order.new_record?
      render "new"
    else
      session[:berth_order_step] = session[:berth_order_params] = nil
      flash[:notice]  = "Bestilling mottatt!"
      redirect_to @berth_order
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
      params.require(:berth_order).permit(:boat_id, :season_id, :status_id)
    end
end
