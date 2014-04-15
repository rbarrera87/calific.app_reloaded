class Vinculacion < ActiveRecord::Base
	belongs_to :perfil
	belongs_to :carrera
end
