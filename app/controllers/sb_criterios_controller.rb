class SbCriteriosController < ApplicationController
  before_action :set_sb_criterio, only: [:show, :edit, :update, :destroy]

  # GET /sb_criterios
  # GET /sb_criterios.json
  def index
    @sb_criterios = SbCriterio.all
  end

  # GET /sb_criterios/1
  # GET /sb_criterios/1.json
  def show
  end

  # GET /sb_criterios/new
  def new
    @sb_criterio = SbCriterio.new
  end

  # GET /sb_criterios/1/edit
  def edit
  end

  # POST /sb_criterios
  # POST /sb_criterios.json
  def create
    @sb_criterio = SbCriterio.new(sb_criterio_params)

    respond_to do |format|
      if @sb_criterio.save
        format.html { redirect_to @sb_criterio, notice: 'Sb criterio was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sb_criterio }
      else
        format.html { render action: 'new' }
        format.json { render json: @sb_criterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sb_criterios/1
  # PATCH/PUT /sb_criterios/1.json
  def update
    respond_to do |format|
      if @sb_criterio.update(sb_criterio_params)
        format.html { redirect_to @sb_criterio, notice: 'Sb criterio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sb_criterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sb_criterios/1
  # DELETE /sb_criterios/1.json
  def destroy
    @sb_criterio.destroy
    respond_to do |format|
      format.html { redirect_to sb_criterios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sb_criterio
      @sb_criterio = SbCriterio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sb_criterio_params
      params.require(:sb_criterio).permit(:nombre, :porcentaje, :rubro_uno, :rubro_dos, :rubro_tres, :type)
    end
end
