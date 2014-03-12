class Prestamo_libro < ActiveRecord::Base
	self.table_name = "prestamo_libros"
	belongs_to :libro
end

