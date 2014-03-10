class Consejero < ActiveRecord::Base

	self.table_name = "consejeros"

		belongs_to :carrera
		belongs_to :grado
		belongs_to :grupo
		belongs_to :perfil
end
