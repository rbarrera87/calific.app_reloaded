class Materia < ActiveRecord::Base
	self.table_name = "materias"
	validates_presence_of :nombre
end
