class Carrera < ActiveRecord::Base
	self.table_name = "carreras"
		has_many :perfiles
		has_one :tutor_grupo	
			validates_presence_of :nombre

	def lista_carreras
    "#{nombre}. #{descripcion}"
  end
end
