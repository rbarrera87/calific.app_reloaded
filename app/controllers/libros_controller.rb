class LibrosController < ApplicationController
  before_action :set_libro, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  
  load_and_authorize_resource except: [:create]
  layout 'welcome' 
  # GET /libros
  # GET /libros.json
  def index
    @libros = Libro.all
  end

  # GET /libros/1
  # GET /libros/1.json
  def show
  end

  # GET /libros/new
  def new
    @libro = Libro.new
  end

  # GET /libros/1/edit
  def edit
  end

  # POST /libros
  # POST /libros.json
  def create
    @libro = Libro.new(libro_params)

    respond_to do |format|
      if @libro.save
        format.html { redirect_to @libro, notice: 'Libro was successfully created.' }
        format.json { render action: 'show', status: :created, location: @libro }
      else
        format.html { render action: 'new' }
        format.json { render json: @libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libros/1
  # PATCH/PUT /libros/1.json
  def update
    respond_to do |format|
      if @libro.update(libro_params)
        format.html { redirect_to @libro, notice: 'Libro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libros/1
  # DELETE /libros/1.json
  def destroy
    @libro.destroy
    respond_to do |format|
      format.html { redirect_to libros_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libro
      @libro = Libro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def libro_params
      params.require(:libro).permit(:nombre, :editorial, :autor, :categoria)
    end
end
