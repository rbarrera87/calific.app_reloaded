class ParcialesController < ApplicationController
  before_action :set_parcial, only: [:show, :edit, :update, :destroy]

  # GET /parciales
  # GET /parciales.json
  def index
    @parciales = Parcial.all
  end

  # GET /parciales/1
  # GET /parciales/1.json
  def show
  end

  # GET /parciales/new
  def new
    @parcial = Parcial.new
  end

  # GET /parciales/1/edit
  def edit
  end

  # POST /parciales
  # POST /parciales.json
  def create
    @parcial = Parcial.new(parcial_params)

    respond_to do |format|
      if @parcial.save
        format.html { redirect_to @parcial, notice: 'Parcial was successfully created.' }
        format.json { render action: 'show', status: :created, location: @parcial }
      else
        format.html { render action: 'new' }
        format.json { render json: @parcial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parciales/1
  # PATCH/PUT /parciales/1.json
  def update
    respond_to do |format|
      if @parcial.update(parcial_params)
        format.html { redirect_to @parcial, notice: 'Parcial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @parcial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parciales/1
  # DELETE /parciales/1.json
  def destroy
    @parcial.destroy
    respond_to do |format|
      format.html { redirect_to parciales_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parcial
      @parcial = Parcial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parcial_params
      params.require(:parcial).permit(:nombre, :cuatrimestre_id)
    end
end
