class Carrera < ActiveRecord::Base
		self.table_name = "carreras"
		has_many :perfiles
	validates_presence_of :nombre
end
