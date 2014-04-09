class SCriteriosController < ApplicationController
  before_action :set_s_criterio, only: [:show, :edit, :update, :destroy]

  # GET /s_criterios
  # GET /s_criterios.json
  def index
    @s_criterios = SCriterio.all
  end

  # GET /s_criterios/1
  # GET /s_criterios/1.json
  def show
  end

  # GET /s_criterios/new
  def new
    @s_criterio = SCriterio.new
  end

  # GET /s_criterios/1/edit
  def edit
  end

  # POST /s_criterios
  # POST /s_criterios.json
  def create
    @s_criterio = SCriterio.new(s_criterio_params)

    respond_to do |format|
      if @s_criterio.save
        format.html { redirect_to @s_criterio, notice: 'S criterio was successfully created.' }
        format.json { render action: 'show', status: :created, location: @s_criterio }
      else
        format.html { render action: 'new' }
        format.json { render json: @s_criterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /s_criterios/1
  # PATCH/PUT /s_criterios/1.json
  def update
    respond_to do |format|
      if @s_criterio.update(s_criterio_params)
        format.html { redirect_to @s_criterio, notice: 'S criterio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @s_criterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /s_criterios/1
  # DELETE /s_criterios/1.json
  def destroy
    @s_criterio.destroy
    respond_to do |format|
      format.html { redirect_to s_criterios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_s_criterio
      @s_criterio = SCriterio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def s_criterio_params
      params.require(:s_criterio).permit(:nombre, :porcentaje, :rubro_uno, :rubro_dos, :rubro_tres, :type)
    end
end
