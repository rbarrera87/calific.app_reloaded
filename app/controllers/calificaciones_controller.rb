class CalificacionesController < ApplicationController
  before_action :set_calificacion, only: [:show, :edit, :update, :destroy]

  # GET /calificaciones
  # GET /calificaciones.json
  def index
    @calificaciones = Calificacion.all
  end

  # GET /calificaciones/1
  # GET /calificaciones/1.jsonk
  def show
  end

  # GET /calificaciones/new
  def new
    @calificacion = Calificacion.new
  end

  # GET /calificaciones/1/edit
  def edit
  end

  # POST /calificaciones
  # POST /calificaciones.json
  def create
    @calificacion = Calificacion.new(calificacion_params)

    respond_to do |format|
      if @calificacion.save
        format.html { redirect_to @calificacion, notice: 'Calificaciones was successfully created.' }
        format.json { render action: 'show', status: :created, location: @calificacion }
      else
        format.html { render action: 'new' }
        format.json { render json: @calificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calificaciones/1
  # PATCH/PUT /calificaciones/1.json
  def update
    respond_to do |format|
      if @calificacion.update(calificacion_params)
        format.html { redirect_to @calificacion, notice: 'Calificaciones was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @calificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calificaciones/1
  # DELETE /calificaciones/1.json
  def destroy
    @calificacion.destroy
    respond_to do |format|
      format.html { redirect_to calificaciones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calificacion
      @calificacion = Calificacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calificacion_params
      params.require(:calificacion).permit(:calificacion_ordinaria, :calificacion_remedial, :calificacion_extraordinaria, :calificacion_final)
    end
end
