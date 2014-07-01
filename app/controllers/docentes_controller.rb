class DocentesController < ApplicationController
  before_action :set_docente, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  load_resource 
  layout 'welcome'
  # GET /docentes
  # GET /docentes.json
  def index
    @docentes = Docente.all
  end

  # GET /docentes/1
  # GET /docentes/1.json
  def show
  end

  # GET /docentes/new
  def new
    @docente = Docente.new
  end

  # GET /docentes/1/edit
  def edit
  end

  # POST /docentes
  # POST /docentes.json
  def create
    @docente = Docente.new(docente_params)

    respond_to do |format|
      if @docente.save
        format.html { redirect_to @docente, notice: 'Docente was successfully created.' }
        format.json { render action: 'show', status: :created, location: @docente }
      else
        format.html { render action: 'new' }
        format.json { render json: @docente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /docentes/1
  # PATCH/PUT /docentes/1.json
  def update
    respond_to do |format|
      if @docente.update(docente_params)
        format.html { redirect_to @docente, notice: 'Docente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @docente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /docentes/1
  # DELETE /docentes/1.json
  def destroy
    @docente.destroy
    respond_to do |format|
      format.html { redirect_to docentes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_docente
      @docente = Docente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def docente_params
      params.require(:docente).permit(:perfil_id, :carrera_id)
      #params.require(:criterio).permit(:nombre, :descripcion, :estado)
    end
end
