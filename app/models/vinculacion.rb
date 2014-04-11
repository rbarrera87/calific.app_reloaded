class Vinculacion < ActiveRecord::Base
  belongs_to :carrera
  belongs_to :perfil
end
