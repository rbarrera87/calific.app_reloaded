class CarreraDocente < ActiveRecord::Base
	self.table_name="carrera_docentes"
	belongs_to :docente
	belongs_to :carrera
end
