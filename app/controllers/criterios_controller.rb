class CriteriosController < ApplicationController
  before_action :set_criterio, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  load_and_authorize_resource except: [:create]
  layout 'welcome'
  # GET /criterios
  # GET /criterios.json
  def index
    @criterios = Criterio.all
  end

  # GET /criterios/1
  # GET /criterios/1.json
  def show
  end

  # GET /criterios/new
  def new
    @criterio = Criterio.new
  end

  # GET /criterios/1/edit
  def edit
  end

  # POST /criterios
  # POST /criterios.json
  def create
    @criterio = Criterio.new(criterio_params)

    respond_to do |format|
      if @criterio.save
        format.html { redirect_to @criterio, notice: 'Criterio was successfully created.' }
        format.json { render action: 'show', status: :created, location: @criterio }
      else
        format.html { render action: 'new' }
        format.json { render json: @criterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /criterios/1
  # PATCH/PUT /criterios/1.json
  def update
    respond_to do |format|
      if @criterio.update(criterio_params)
        format.html { redirect_to @criterio, notice: 'Criterio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @criterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /criterios/1
  # DELETE /criterios/1.json
  def destroy
    @criterio.destroy
    respond_to do |format|
      format.html { redirect_to criterios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_criterio
      @criterio = Criterio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def criterio_params
      params.require(:criterio).permit(:nombre, :descripcion, :estado)
    end
end
