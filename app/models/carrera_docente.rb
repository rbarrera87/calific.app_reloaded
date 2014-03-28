class CarreraDocente < ActiveRecord::Base
  self.table_name="carrera_docentes"
  belongs_to :docente, class_name: Docente
  belongs_to :carrera, class_name: Carrera
end
