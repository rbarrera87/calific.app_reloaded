class Libro <ActiveRecord::Base
self.table_name = "libros"
has_many :prestamo_libros
end