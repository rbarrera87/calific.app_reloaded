class Grupo < ActiveRecord::Base
	self.table_name = "grupos"
	validates_presence_of :nombre
end
