class Asignatura < ActiveRecord::Base

	after_create :crear_rubro

	belongs_to :carrera
	belongs_to :grupo
	has_one :calificacion
	has_one :rubro

	private
		def crear_rubro
			rubro = self.build_rubro
			rubro.calificacion_id = 0
			rubro.save
		end

  validates_presence_of :nombre
end
