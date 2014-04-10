class Grupo < ActiveRecord::Base
  self.table_name = "grupos"

 	belongs_to :carrera 
 	belongs_to :grado
 	has_many :calificaciones
  has_many :asignaturas
  has_many :perfiles
  has_one :consejero
 

  validates_presence_of :nombre
end
