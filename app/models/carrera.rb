class Carrera < ActiveRecord::Base
  self.table_name = "carreras"
  validates_presence_of :nombre
  has_many :perfiles, class_name: Perfil
end
