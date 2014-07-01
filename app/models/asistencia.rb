class Asistencia < ActiveRecord::Base
  self.table_name = "asistencias"
  belongs_to :perfil
end
