class Grupo < ActiveRecord::Base
	
  self.table_name = "grupos"

    has_many :perfiles
    has_many :rel_grados_grupos
    has_many :grados, through: :rel_grados_grupos
    has_one :consejero
	 
    validates_presence_of :nombre
end
