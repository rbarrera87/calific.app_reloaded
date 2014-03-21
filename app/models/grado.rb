class Grado < ActiveRecord::Base
  self.table_name = "grados"
  has_many :rel_grados_grupos
  has_many :grupos, through: :rel_grados_grupos
  has_one :consejero
  has_many :perfiles
  validates_presence_of :nombre
  self.all.each do |grado|
  scope grado.nombre, ->{ where(id: grado.id) }
end
end
