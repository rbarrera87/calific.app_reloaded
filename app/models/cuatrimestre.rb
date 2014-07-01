class Cuatrimestre < ActiveRecord::Base
	self.table_name = "cuatrimestres"
  has_many :parciales dependent: :destroy
end
