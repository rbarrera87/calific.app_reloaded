class Docente < ActiveRecord::Base
	self.table_name = "docentes"
	has_many :carrera_docentes
	has_many :carreras, through :carrera_docentes
  has_one :perfil

end
