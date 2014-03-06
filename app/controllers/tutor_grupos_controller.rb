class TutorGruposController < ApplicationController
  before_action :set_tutor_grupo, only: [:show, :edit, :update, :destroy]

  # GET /tutor_grupos
  # GET /tutor_grupos.json
  def index
    @tutor_grupos = TutorGrupo.all
  end

  # GET /tutor_grupos/1
  # GET /tutor_grupos/1.json
  def show
  end

  # GET /tutor_grupos/new
  def new
    @tutor_grupo = TutorGrupo.new
  end

  # GET /tutor_grupos/1/edit
  def edit
  end

  # POST /tutor_grupos
  # POST /tutor_grupos.json
  def create
    @tutor_grupo = TutorGrupo.new(tutor_grupo_params)

    respond_to do |format|
      if @tutor_grupo.save
        format.html { redirect_to @tutor_grupo, notice: 'Tutor grupo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tutor_grupo }
      else
        format.html { render action: 'new' }
        format.json { render json: @tutor_grupo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutor_grupos/1
  # PATCH/PUT /tutor_grupos/1.json
  def update
    respond_to do |format|
      if @tutor_grupo.update(tutor_grupo_params)
        format.html { redirect_to @tutor_grupo, notice: 'Tutor grupo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tutor_grupo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutor_grupos/1
  # DELETE /tutor_grupos/1.json
  def destroy
    @tutor_grupo.destroy
    respond_to do |format|
      format.html { redirect_to tutor_grupos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutor_grupo
      @tutor_grupo = TutorGrupo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutor_grupo_params
      params.require(:tutor_grupo).permit(:carrera_id, :grado_id, :grupo_id, :perfil_id)
    end
end
