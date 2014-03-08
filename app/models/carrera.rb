class Carrera < ActiveRecord::Base
		self.table_name = "carreras"
		has_many :perfiles
		has_many :docentes
	validates_presence_of :nombre
end
