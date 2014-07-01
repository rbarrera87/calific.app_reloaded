  class CuatrimestresController < ApplicationController
  before_action :set_cuatrimestr, only: [:show, :edit, :update, :destroy]

  # GET /cuatrimestres
  # GET /cuatrimestres.json
  def index
    @cuatrimestres = Cuatrimestre.all
  end

  # GET /cuatrimestres/1
  # GET /cuatrimestres/1.json
  def show
  end

  # GET /cuatrimestres/new
  def new
    @cuatrimestre = Cuatrimestre.new
  end

  # GET /cuatrimestres/1/edit
  def edit
  end

  # POST /cuatrimestres
  # POST /cuatrimestres.json
  def create
    @cuatrimestre = Cuatrimestre.new(cuatrimestr_params)

    respond_to do |format|
      if @cuatrimestre.save
        format.html { redirect_to @cuatrimestre, notice: 'Cuatrimestre was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cuatrimestre }
      else
        format.html { render action: 'new' }
        format.json { render json: @cuatrimestre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuatrimestres/1
  # PATCH/PUT /cuatrimestres/1.json
  def update
    respond_to do |format|
      if @cuatrimestre.update(cuatrimestre_params)
        format.html { redirect_to @cuatrimestre, notice: 'Cuatrimestre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cuatrimestre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuatrimestres/1
  # DELETE /cuatrimestres/1.json
  def destroy
    @cuatrimestre.destroy
    respond_to do |format|
      format.html { redirect_to cuatrimestres_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuatrimestr
      @cuatrimestre = Cuatrimestre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuatrimestr_params
      params.require(:cuatrimestre).permit(:nombre)
    end
end
