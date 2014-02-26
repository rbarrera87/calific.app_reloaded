class Carrera < ActiveRecord::Base
		self.table_name = "carreras"
	validates_presence_of :nombre
end
