class RelGradoGrupo < ActiveRecord::Base
	self.table_name = "rel_grado_grupos"
	belongs_to :grupo
  belongs_to :grado
end
