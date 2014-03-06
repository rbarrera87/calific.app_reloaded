class ProfesorCatalogosController < ApplicationController
  before_action :set_profesor_catalogo, only: [:show, :edit, :update, :destroy]

  # GET /profesor_catalogos
  # GET /profesor_catalogos.json
  def index
    @profesor_catalogos = ProfesorCatalogo.all
  end

  # GET /profesor_catalogos/1
  # GET /profesor_catalogos/1.json
  def show
  end

  # GET /profesor_catalogos/new
  def new
    @profesor_catalogo = ProfesorCatalogo.new
  end

  # GET /profesor_catalogos/1/edit
  def edit
  end

  # POST /profesor_catalogos
  # POST /profesor_catalogos.json
  def create
    @profesor_catalogo = ProfesorCatalogo.new(profesor_catalogo_params)

    respond_to do |format|
      if @profesor_catalogo.save
        format.html { redirect_to @profesor_catalogo, notice: 'Profesor catalogo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profesor_catalogo }
      else
        format.html { render action: 'new' }
        format.json { render json: @profesor_catalogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profesor_catalogos/1
  # PATCH/PUT /profesor_catalogos/1.json
  def update
    respond_to do |format|
      if @profesor_catalogo.update(profesor_catalogo_params)
        format.html { redirect_to @profesor_catalogo, notice: 'Profesor catalogo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profesor_catalogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profesor_catalogos/1
  # DELETE /profesor_catalogos/1.json
  def destroy
    @profesor_catalogo.destroy
    respond_to do |format|
      format.html { redirect_to profesor_catalogos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesor_catalogo
      @profesor_catalogo = ProfesorCatalogo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profesor_catalogo_params
      params.require(:profesor_catalogo).permit(:tipo_horario, :estado)
    end
end
