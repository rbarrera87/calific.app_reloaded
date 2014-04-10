class VinculacionesController < ApplicationController
  def index
    @perfil=Perfil.all
  end
end