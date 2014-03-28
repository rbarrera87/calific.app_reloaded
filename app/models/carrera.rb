class Carrera < ActiveRecord::Base
  self.table_name = "carreras"
  has_many :perfiles, class_name: Perfil
  has_many :carrera_docentes, class_name: CarreraDocente
  has_many :docentes, through: :carrera_docentes
  validates_presence_of :nombre

end
