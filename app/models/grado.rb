class Grado < ActiveRecord::Base
		self.table_name = "grados"
	validates_presence_of :nombre
end
