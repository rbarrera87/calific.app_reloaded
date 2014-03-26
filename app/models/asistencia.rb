class Asistencia < ActiveRecord::Base
  self.table_name = "asistencias"
  belongs_to :perfil
  scope :presente, -> {where(:presente => true)}
  scope :falta, -> {where(:presente => false)}
end
