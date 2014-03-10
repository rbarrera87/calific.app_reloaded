class PerfilesController < ApplicationController
   before_action :set_perfil, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  def index
    @perfil = Perfil.last
  end

  def show
    render 'show'
  end

  def new
    @perfil = Perfil.new
  end

  def edit
    @perfil = Perfil.last
  end

  def update
    respond_to do |format|
       if @perfil.update(perfil_params)
          format.html { redirect_to @perfil, notice: 'El perfil se ha actualizado' }
          format.json { head :no_content }
       else
         format.html { render action: 'edit' }
         format.json { render json: @perfil.errors, status: :unprocessable_entity }
       end
    end
  end

  def create
     @perfil = Perfil.new(perfil_params)
      respond_to do |format|
      if @perfil.save
        format.html { redirect_to @perfil, notice: 'El perfil fue agregado.' }
         format.json { render action: 'show', status: :created, location: @perfil }
      else
         format.html { render action: 'new' }
         format.json { render json: @perfil.errors, status: :unprocessable_entity }
      end
     end
  end
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_perfil
      @perfil = Perfil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perfil_params
      params.require(:perfil).permit(
    

       :nombre,
       :apellido_paterno,
       :apellido_materno,
       :numero_control,
       :fecha_nacimiento,
       :estado_civil,
       :sexo,
       :cp,
       :curp,
       :nss,
       :rfc,
       :telefono,
       :celular,
       :calle,
       :numero_exterior,
       :numero_interior,
       :numero_departamento,
       :referencias,
       :comentarios,
       :poblacion,
       :estado,
       :situacion,
       :turno)

    end
end
