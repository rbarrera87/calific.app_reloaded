class Carrera < ActiveRecord::Base
		self.table_name = "carreras"
		belongs_to :perfil
	validates_presence_of :nombre
end
