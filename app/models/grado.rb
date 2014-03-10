class Grado < ActiveRecord::Base
	self.table_name = "grados"
  has_many :rel_grados_grupos
  has_many :grupos, through: :rel_grados_grupos
  has_many :asistencias
	validates_presence_of :nombre
end
