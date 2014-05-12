class VinculacionesController < ApplicationController
  before_action :set_vinculacion, only: [:show, :edit, :update, :destroy]

  # GET /vinculaciones
  # GET /vinculaciones.json
  def index
    @vinculaciones = Vinculacion.all
  end

  # GET /vinculaciones/1
  # GET /vinculaciones/1.json
  def show
    
  end

  # GET /vinculaciones/new
  def new
    @vinculacion = Vinculacion.new
  end

  # GET /vinculaciones/1/edit
  def edit
  end

  # POST /vinculaciones
  # POST /vinculaciones.json
  def create
    @vinculacion = Vinculacion.new(vinculacion_params)

    respond_to do |format|
      if @vinculacion.save
        format.html { redirect_to @vinculacion, notice: 'Vinculacion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vinculacion }
      else
        format.html { render action: 'new' }
        format.json { render json: @vinculacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vinculaciones/1
  # PATCH/PUT /vinculaciones/1.json
  def update
    respond_to do |format|
      if @vinculacion.update(vinculacion_params)
        format.html { redirect_to @vinculacion, notice: 'Vinculacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vinculacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vinculaciones/1
  # DELETE /vinculaciones/1.json
  def destroy
    @vinculacion.destroy
    respond_to do |format|
      format.html { redirect_to vinculaciones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vinculacion
      @vinculacion = Vinculacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vinculacion_params
      params.require(:vinculacion).permit(:carrera_id, :perfil_id, :nombre_proyecto, :nombre_director, :fecha_inicio, :fecha_fin)
    end
end
