class GruposController < ApplicationController
  before_action :set_grupo, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  load_and_authorize_resource except: [:create] 
  layout 'welcome'

  def index
    @grupos = Grupo.all
  end

  def show
  end

  def new
    @grupo = Grupo.new
  end

  def edit
  end

  def create
    @grupo = Grupo.new(grupo_params)
    
    respond_to do |format|
      if @grupo.save
        format.html { redirect_to @grupo, notice: 'El grupo fue agregado.' }
        format.json { render action: 'show', status: :created, location: @grupo }
      else
        format.html { render action: 'new' }
        format.json { render json: @grupo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @grupo.update(grupo_params)
        format.html { redirect_to @grupo, notice: 'El grupo se ha actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @grupo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @grupo.destroy
    respond_to do |format|
      format.html { redirect_to grupos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo
      @grupo = Grupo.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_params
      params.require(:grupo).permit(:nombre, :descripcion)
    end
end
