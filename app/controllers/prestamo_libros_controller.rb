class PrestamoLibrosController < ApplicationController
  before_action :set_prestamo_libro, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  load_and_authorize_resource 
  # GET /prestamo_libros
  # GET /prestamo_libros.json
  def index
    @prestamo_libros = PrestamoLibro.all
  end

  # GET /prestamo_libros/1
  # GET /prestamo_libros/1.json
  def show
  end

  # GET /prestamo_libros/new
  def new
    @prestamo_libro = PrestamoLibro.new
  end

  # GET /prestamo_libros/1/edit
  def edit
  end

  # POST /prestamo_libros
  # POST /prestamo_libros.json
  def create
    @prestamo_libro = PrestamoLibro.new(prestamo_libro_params)

    respond_to do |format|
      if @prestamo_libro.save
        format.html { redirect_to @prestamo_libro, notice: 'Prestamo libro was successfully created.' }
        format.json { render action: 'show', status: :created, location: @prestamo_libro }
      else
        format.html { render action: 'new' }
        format.json { render json: @prestamo_libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prestamo_libros/1
  # PATCH/PUT /prestamo_libros/1.json
  def update
    respond_to do |format|
      if @prestamo_libro.update(prestamo_libro_params)
        format.html { redirect_to @prestamo_libro, notice: 'Prestamo libro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @prestamo_libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prestamo_libros/1
  # DELETE /prestamo_libros/1.json
  def destroy
    @prestamo_libro.destroy
    respond_to do |format|
      format.html { redirect_to prestamo_libros_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prestamo_libro
      @prestamo_libro = PrestamoLibro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prestamo_libro_params
      params.require(:prestamo_libro).permit(:multa_dia, :comentarios, :perfil_id, :libro_id)
    end
end
