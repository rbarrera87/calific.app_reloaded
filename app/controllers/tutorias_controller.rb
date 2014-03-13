class TutoriasController < ApplicationController
  before_action :set_tutoria, only: [:show, :edit, :update, :destroy]
  # GET /tutorias
  # GET /tutorias.json
  def index
    @tutorias = Tutoria.all
  end

  # GET /tutorias/1
  # GET /tutorias/1.json
  def show
  end

  # GET /tutorias/new
  def new
    @tutoria = Tutoria.new
  end

  # GET /tutorias/1/edit
  def edit
  end

  # POST /tutorias
  # POST /tutorias.json
  def create
    @tutoria = Tutoria.new(tutoria_params)

    respond_to do |format|
      if @tutoria.save
        format.html { redirect_to @tutoria, notice: 'Tutorias was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tutoria }
      else
        format.html { render action: 'new' }
        format.json { render json: @tutoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutorias/1
  # PATCH/PUT /tutorias/1.json
  def update
    respond_to do |format|
      if @tutoria.update(tutoria_params)
        format.html { redirect_to @tutoria, notice: 'Tutorias was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tutoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorias/1
  # DELETE /tutorias/1.json
  def destroy
    @tutoria.destroy
    respond_to do |format|
      format.html { redirect_to tutorias_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutoria
      @tutoria = Tutoria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutoria_params
      params.require(:tutoria).permit(:mes1, :mes2, :mes3, :mes4, :grado_id, :grupo_id, :perfil_id)
    end
end
