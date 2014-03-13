class IndicadoresController < ApplicationController
  before_action :set_indicador, only: [:show, :edit, :update, :destroy]


  # GET /indicadores
  # GET /indicadores.json
  def index
    @indicadores = Indicador.all
  end

  # GET /indicadores/1
  # GET / indicadores/1.json
  def show
  end

  # GET /indicadores/new
  def new
    @indicador = Indicador.new
  end

  # GET /indicadores/1/edit
  def edit
  end

  # POST /indicadores
  # POST /indicadores.json
  def create
    @indicador = Indicador.new(indicador_params)

    respond_to do |format|
      if @indicador.save
        format.html { redirect_to @indicador, notice: 'Indicador was successfully created.' }
        format.json { render action: 'show', status: :created, location: @indicador }
      else
        format.html { render action: 'new' }
        format.json { render json: @indicador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indicadores/1
  # PATCH/PUT /indicadores/1.json
  def update
    respond_to do |format|
      if @indicador.update(indicador_params)
        format.html { redirect_to @indicador, notice: 'Indicadores was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @indicador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicadores/1
  # DELETE /indicadores/1.json
  def destroy
    @indicador.destroy
    respond_to do |format|
      format.html { redirect_to indicadores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indicador
      @indicador = Indicador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indicador_params
     params.require(:indicador).permit(:nombre, :descripcion, :estado)
    end
end
