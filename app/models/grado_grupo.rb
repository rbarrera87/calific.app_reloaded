class GradoGrupo < ActiveRecord::Base
  self.table_name = "grados_grupos"
  belongs_to :grado
  belongs_to :grupo
  belongs_to :carrera
  has_many :perfiles

end
