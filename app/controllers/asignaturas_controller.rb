class AsignaturasController < ApplicationController
  before_action :set_asignatura, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  #load_and_authorize_resource 
  layout 'application'

  def index
    @asignaturas = Asignatura.all
  end

  def show
  end

  def new
    @asignatura = Asignatura.new
    @asignatura.s_criterios.build
    @asignatura.sb_criterios.build
  end

  def edit
  end

  def create
    @asignatura = Asignatura.new(asignatura_params)

    respond_to do |format|
      if @asignatura.save
        format.html { redirect_to @asignatura, notice: 'La asignatura se ha creado exitosamente' }
        format.json { render action: 'show', status: :created, location: @asignatura }
      else
        format.html { render action: 'new' }
        format.json { render json: @asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @asignatura.update(asignatura_params)
        format.html { redirect_to @asignatura, notice: 'La asignatura se ha actualizado' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @asignatura.destroy
    respond_to do |format|
      format.html { redirect_to asignaturas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignatura
      @asignatura = Asignatura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asignatura_params
      params.require(:asignatura).permit(:nombre, :descripcion)
    end
end
