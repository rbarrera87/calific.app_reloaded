class Grupo < ActiveRecord::Base
  self.table_name = "grupos"
  validates_presence_of :nombre
  has_many :perfiles, class_name: Perfil
  has_many :rel_grado_grupos, class_name: RelGradoGrupo
  has_many :grados, through: :rel_grado_grupos, class_name: RelGradoGrupo

  def display_name
    nombre
  end
end
