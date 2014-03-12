class Asistencia < ActiveRecord::Base
  self.table_name = "asistencias"
  belongs_to :perfil
  belongs_to :grupo
  belongs_to :grado
end
