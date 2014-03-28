class UserAsignatura < ActiveRecord::Base
  self.table_name = "user_asignaturas"
	belongs_to :user
	belongs_to :asignatura
end
