class Grupo < ActiveRecord::Base
	self.table_name = "grupos"
	 belongs_to :perfil
	 has_many :rel_grados_grupos
     has_many :grados, through: :rel_grados_grupos
     
	validates_presence_of :nombre
end
