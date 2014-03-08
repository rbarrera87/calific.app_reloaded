class Docente < ActiveRecord::Base
	self.table_name = "docentes"
	belongs_to :carrera
  has_one :perfil

end
