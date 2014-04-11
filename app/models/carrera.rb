class Carrera < ActiveRecord::Base
  self.table_name = "carreras"
  has_one :vinculacion
  has_many :perfiles
  has_many :carrera_docentes
  has_many :docentes, through: :carrera_docentes
  validates_presence_of :nombre

end
