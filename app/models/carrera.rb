class Carrera < ActiveRecord::Base
  self.table_name = "carreras"
  belongs_to :criterio
  has_many :grupos
  has_many :perfiles
  has_many :asignaturas

  has_many :carrera_docentes
  has_many :docentes, through: :carrera_docentes

  validates_presence_of :nombre

end
