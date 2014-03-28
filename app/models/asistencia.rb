class Asistencia < ActiveRecord::Base
  self.table_name = "asistencias"
  belongs_to :perfil, class_name: Perfil
end
