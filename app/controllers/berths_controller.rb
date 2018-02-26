class BerthsController < LoggedInController
  before_action :set_berth, only: [:show, :edit, :update, :destroy]

  # GET /berths
  # GET /berths.json
  def index
    @berths = Berth.all
  end

  # GET /berths/1
  # GET /berths/1.json
  def show
  end

  # GET /berths/new
  def new
    @berth = Berth.new
  end

  # GET /berths/1/edit
  def edit
  end

  # POST /berths
  # POST /berths.json
  def create
    @berth = Berth.new(berth_params)

    respond_to do |format|
      if @berth.save
        format.html { redirect_to @berth, notice: 'Berth was successfully created.' }
        format.json { render :show, status: :created, location: @berth }
      else
        format.html { render :new }
        format.json { render json: @berth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /berths/1
  # PATCH/PUT /berths/1.json
  def update
    respond_to do |format|
      if @berth.update(berth_params)
        format.html { redirect_to @berth, notice: 'Berth was successfully updated.' }
        format.json { render :show, status: :ok, location: @berth }
      else
        format.html { render :edit }
        format.json { render json: @berth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /berths/1
  # DELETE /berths/1.json
  def destroy
    @berth.destroy
    respond_to do |format|
      format.html { redirect_to berths_url, notice: 'Berth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_berth
      @berth = Berth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def berth_params
      params.require(:berth).permit(:berth_number, :width, :price_per_month, :in_service)
    end
end
