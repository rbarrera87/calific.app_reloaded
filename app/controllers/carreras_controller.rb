class CarrerasController < ApplicationController
  before_action :set_carrera, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  #load_and_authorize_resource
  layout 'application'

  def index
    @carreras = Carrera.all
  end

  def show
  end

  def new
    @carrera = Carrera.new
  end

  def edit
  end

  def create
    @carrera = Carrera.new(carrera_params)
    
    respond_to do |format|
      if @carrera.save
        format.html { redirect_to @carrera, notice: 'La carrera fue agregada.' }
        format.json { render action: 'show', status: :created, location: @carrera }
      else
        format.html { render action: 'new' }
        format.json { render json: @carrera.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @carrera.update (carrera_params)
        format.html { redirect_to @carrera, notice: 'La carrera se ha actializado'}
        format.json { head :no_content}
      else
        format.html { render action: 'edit'}
        format.json { render json: @carrera.errors, status: :unprocessable_entity}
      end       
    end
  end

  def destroy
    @carrera.destroy
    respond_to do |format|
      format.html { redirect_to carreras_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrera
      @carrera = Carrera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrera_params
      params.require(:carrera).permit(:nombre, :descripcion)
    end
end
