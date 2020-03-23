class PvModulesController < ApplicationController
  before_action :set_pv_module, only: [:show, :edit, :update, :destroy]

  # GET /pv_modules
  # GET /pv_modules.json
  def index
    @pv_modules = PvModule.all
  end

  # GET /pv_modules/1
  # GET /pv_modules/1.json
  def show
  end

  # GET /pv_modules/new
  def new
    @pv_module = PvModule.new
  end

  # GET /pv_modules/1/edit
  def edit
  end

  # POST /pv_modules
  # POST /pv_modules.json
  def create
    @pv_module = PvModule.new(pv_module_params)

    respond_to do |format|
      if @pv_module.save
        format.html { redirect_to @pv_module, notice: 'Pv module was successfully created.' }
        format.json { render :show, status: :created, location: @pv_module }
      else
        format.html { render :new }
        format.json { render json: @pv_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pv_modules/1
  # PATCH/PUT /pv_modules/1.json
  def update
    respond_to do |format|
      if @pv_module.update(pv_module_params)
        format.html { redirect_to @pv_module, notice: 'Pv module was successfully updated.' }
        format.json { render :show, status: :ok, location: @pv_module }
      else
        format.html { render :edit }
        format.json { render json: @pv_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pv_modules/1
  # DELETE /pv_modules/1.json
  def destroy
    @pv_module.destroy
    respond_to do |format|
      format.html { redirect_to pv_modules_url, notice: 'Pv module was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pv_module
      @pv_module = PvModule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pv_module_params
      params.require(:pv_module).permit(:product_name, :producent_name, :nominal_power, :open_voltage, :mppt_voltage, :mppt_current, :sc_current, :i_coeff, :u_coeff)
    end
end
