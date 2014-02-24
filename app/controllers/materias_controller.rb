class MateriasController < ApplicationController
   before_action :set_materia, only: [:show, :edit, :update, :destroy]

  def index
    @materias = Materia.all
  end

  def show

  end

  def new
    @materia = Materia.new
  end

  def edit
  end

  def create
    @materia = Materia.new(materia_params)
     respond_to do |format|
      if @materia.save
        format.html { redirect_to @materia, notice: 'La materia fue agregada.' }
        format.json { render action: 'show', status: :created, location: @materia }
      else
        format.html { render action: 'new' }
        format.json { render json: @materia.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
      if @materia.update(materia_params)
        format.html { redirect_to @materia, notice: 'La materia se ha actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @materia.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @materia.destroy
    respond_to do |format|
      format.html { redirect_to materias_url }
      format.json { head :no_content }
    end
  end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_materia
      @materia = Materia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def materia_params
      params.require(:materia).permit(:nombre, :descripcion)
    end
end
