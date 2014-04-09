class PerfilAsignatura < ActiveRecord::Base
  self.table_name="perfiles_asignaturas"
  belongs_to :perfil
  belongs_to :asignatura
end
