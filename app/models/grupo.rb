class Grupo < ActiveRecord::Base
  self.table_name = "grupos"
  has_many :perfiles, class_name: Perfil
  has_many :rel_grados_grupos, class_name: RelGradoGrupo
  has_many :grados, through: :rel_grados_grupos
  has_one :consejero, class_name: Consejero

  validates_presence_of :nombre
end
