class PrestamoLibro < ActiveRecord::Base
	self.table_name = "prestamo_libros"
	belongs_to :libro
end

