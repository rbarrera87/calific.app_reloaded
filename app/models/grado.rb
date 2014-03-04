class Grado < ActiveRecord::Base
  self.table_name = "grados"
  validates_presence_of :nombre
  has_many :rel_grado_grupos, class_name: RelGradoGrupo
  has_many :grupos, through: :rel_grado_grupos, class_name: RelGradoGrupo

  def display_name
    nombre
  end
end
