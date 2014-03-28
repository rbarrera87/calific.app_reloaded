class Grado < ActiveRecord::Base
  self.table_name = "grados"
  has_many :rel_grados_grupos, class_name: RelGradoGrupo
  has_many :grupos, through: :rel_grados_grupos
  has_one :consejero, class_name: Consejero
  has_many :perfiles, class_name: Perfil
  validates_presence_of :nombre

end
