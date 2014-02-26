class GradosController < ApplicationController
  before_action :set_grado, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  layout 'application'

  def index
    @grados = Grado.all
  end

  def show
  end

  def new
    @grado = Grado.new
  end

  def edit
  end

  def create
    @grado = Grado.new(grado_params)

    respond_to do |format|
      if @grado.save
        format.html { redirect_to @grado, notice: 'El grado fue agregado.' }
        format.json { render action: 'show', status: :created, location: @grado }
      else
        format.html { render action: 'new' }
        format.json { render json: @grado.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @grado.update(grado_params)
        format.html { redirect_to @grado, notice: 'El grado se ha actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @grado.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @grado.destroy
    respond_to do |format|
      format.html {redirect_to grados_url}
      format.json {head :no_content}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grado
      @grado = Grado.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def grado_params
      params.require(:grado).permit(:nombre, :descripcion)
    end
end