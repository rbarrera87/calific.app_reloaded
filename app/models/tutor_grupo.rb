class TutorGrupo < ActiveRecord::Base
	self.table_name = "tutor_grupos"

	belongs_to :carrera
	belongs_to :grado
	belongs_to :grupo
	belongs_to :perfil

	def lista_carreras
    "#{nombre}"
  end
end
