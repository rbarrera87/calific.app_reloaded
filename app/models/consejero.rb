class Consejero < ActiveRecord::Base

	self.table_name = "consejeros"

	belongs_to :carrera, class_name: Carrera
	belongs_to :grado, class_name: Grado
	belongs_to :grupo, class_name: Grupo
	belongs_to :perfil, class_name: Perfil
end
