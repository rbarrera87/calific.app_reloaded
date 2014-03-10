class Carrera < ActiveRecord::Base
	self.table_name = "carreras"

	has_many :perfiles
	has_one :consejero	

	validates_presence_of :nombre


end
