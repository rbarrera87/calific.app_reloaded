class RubrosController < ApplicationController
  before_action :set_rubro, only: [:show, :edit, :update, :destroy]

  # GET /rubros
  # GET /rubros.json
  def index
    @rubros = Rubro.all
  end

  # GET /rubros/1
  # GET /rubros/1.json
  def show
  end

  # GET /rubros/new
  def new
    @rubro = Rubro.new
  end

  # GET /rubros/1/edit
  def edit
  end

  # POST /rubros
  # POST /rubros.json
  def create
    @rubro = Rubro.new(rubro_params)

    respond_to do |format|
      if @rubro.save
        format.html { redirect_to @rubro, notice: 'Rubro was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rubro }
      else
        format.html { render action: 'new' }
        format.json { render json: @rubro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rubros/1
  # PATCH/PUT /rubros/1.json
  def update
    respond_to do |format|
      if @rubro.update(rubro_params)
        format.html { redirect_to @rubro, notice: 'Rubro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rubro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubros/1
  # DELETE /rubros/1.json
  def destroy
    @rubro.destroy
    respond_to do |format|
      format.html { redirect_to rubros_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rubro
      @rubro = Rubro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rubro_params
      params.require(:rubro).permit(:sb1, :sb2, :sb3, :sh1, :sh2, :sh3, :s1, :s2, :s3, :calificacion_id, :asignatura_id)
    end
end
