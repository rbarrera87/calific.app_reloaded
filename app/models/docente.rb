class Docente < ActiveRecord::Base
  self.table_name = "docentes"
  has_many :carrera_docentes, class_name: CarreraDocente
  has_many :carreras, through: :carrera_docentes
  belongs_to :perfil, class_name: Perfil


end
