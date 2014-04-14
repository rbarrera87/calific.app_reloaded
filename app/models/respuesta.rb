class Respuesta < ActiveRecord::Base
  belongs_to :pregunta
  belongs_to :perfil
end
