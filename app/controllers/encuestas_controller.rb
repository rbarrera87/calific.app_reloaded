class EncuestasController < ApplicationController
  before_action :set_encuesta, only: [:show, :edit, :update, :destroy, :preguntas]
  layout 'welcome'
  # GET /encuestas
  # GET /encuestas.json
  def index
    @encuestas = Encuesta.all
  end

  # GET /encuestas/1
  # GET /encuestas/1.json
  def show
  end

  # GET /encuestas/new
  def new
    @encuesta = Encuesta.new
    3.times do
      pregunta = @encuesta.preguntas.build
      1.times { pregunta.respuestas.build }
    end
  end

  # GET /encuestas/1/edit
  def edit
  end

  # POST /encuestas
  # POST /encuestas.json
  def create
    @encuesta = Encuesta.new(encuesta_params)

    respond_to do |format|
      if @encuesta.save
        format.html { redirect_to @encuesta, notice: 'Encuesta was successfully created.' }
        format.json { render action: 'show', status: :created, location: @encuesta }
      else
        format.html { render action: 'new' }
        format.json { render json: @encuesta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encuestas/1
  # PATCH/PUT /encuestas/1.json
  def update
    respond_to do |format|
      if @encuesta.update(encuesta_params)
        format.html { redirect_to @encuesta, notice: 'Encuesta was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @encuesta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encuestas/1
  # DELETE /encuestas/1.json
  def destroy
    @encuesta.destroy
    respond_to do |format|
      format.html { redirect_to encuestas_url }
      format.json { head :no_content }
    end
  end

  def preguntas
    @perfiles = Perfil.all
    @preguntas = @encuesta.preguntas
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encuesta
      @encuesta = Encuesta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encuesta_params
      params.require(:encuesta).permit(:nombre,
        preguntas_attributes: [:id, :pregunta,
          respuestas_attributes: [:id, :respuesta, :perfil_id]
          ])
    end
end
