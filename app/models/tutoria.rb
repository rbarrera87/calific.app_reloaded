class Tutoria < ActiveRecord::Base
	self.table_name = "tutorias"
	class_name = Tutoria
	belongs_to :grupo
	belongs_to :grado
	belongs_to :perfil
end
