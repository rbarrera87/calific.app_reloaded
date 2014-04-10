class ShCriteriosController < ApplicationController
  before_action :set_sh_criterio, only: [:show, :edit, :update, :destroy]

  # GET /sh_criterios
  # GET /sh_criterios.json
  def index
    @sh_criterios = ShCriterio.all
  end

  # GET /sh_criterios/1
  # GET /sh_criterios/1.json
  def show
  end

  # GET /sh_criterios/new
  def new
    @sh_criterio = ShCriterio.new
  end

  # GET /sh_criterios/1/edit
  def edit
  end

  # POST /sh_criterios
  # POST /sh_criterios.json
  def create
    @sh_criterio = ShCriterio.new(sh_criterio_params)

    respond_to do |format|
      if @sh_criterio.save
        format.html { redirect_to @sh_criterio, notice: 'Sh criterio was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sh_criterio }
      else
        format.html { render action: 'new' }
        format.json { render json: @sh_criterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sh_criterios/1
  # PATCH/PUT /sh_criterios/1.json
  def update
    respond_to do |format|
      if @sh_criterio.update(sh_criterio_params)
        format.html { redirect_to @sh_criterio, notice: 'Sh criterio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sh_criterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sh_criterios/1
  # DELETE /sh_criterios/1.json
  def destroy
    @sh_criterio.destroy
    respond_to do |format|
      format.html { redirect_to sh_criterios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sh_criterio
      @sh_criterio = ShCriterio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sh_criterio_params
      params.require(:sh_criterio).permit(:porcentaje, :rubro_uno, :rubro_dos, :rubro_tres, :criterio_id)
    end
end
