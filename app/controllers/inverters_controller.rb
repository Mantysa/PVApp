class InvertersController < ApplicationController
  before_action :set_inverter, only: [:show, :edit, :update, :destroy]

  # GET /inverters
  # GET /inverters.json
  def index
    @inverters = Inverter.all
  end

  # GET /inverters/1
  # GET /inverters/1.json
  def show
  end

  # GET /inverters/new
  def new
    @inverter = Inverter.new
  end

  # GET /inverters/1/edit
  def edit
  end

  # POST /inverters
  # POST /inverters.json
  def create
    @inverter = Inverter.new(inverter_params)

    respond_to do |format|
      if @inverter.save
        format.html { redirect_to @inverter, notice: 'Inverter was successfully created.' }
        format.json { render :show, status: :created, location: @inverter }
      else
        format.html { render :new }
        format.json { render json: @inverter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inverters/1
  # PATCH/PUT /inverters/1.json
  def update
    respond_to do |format|
      if @inverter.update(inverter_params)
        format.html { redirect_to @inverter, notice: 'Inverter was successfully updated.' }
        format.json { render :show, status: :ok, location: @inverter }
      else
        format.html { render :edit }
        format.json { render json: @inverter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inverters/1
  # DELETE /inverters/1.json
  def destroy
    @inverter.destroy
    respond_to do |format|
      format.html { redirect_to inverters_url, notice: 'Inverter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inverter
      @inverter = Inverter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inverter_params
      params.require(:inverter).permit(:product_name, :producer_name, :nominal_power, :max_voltage, :min_voltage, :mppt_max_voltage, :mppt_min_voltage, :start_voltage, :max_current, :mppt_count, :str_count)
    end
end
