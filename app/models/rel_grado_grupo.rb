class RelGradoGrupo < ActiveRecord::Base
  self.table_name = "rel_grado_grupos"
  validates :grado_id, :grupo_id, presence: true
  belongs_to :grupo, class_name: Grupo
  belongs_to :grado, class_name: Grado
end
