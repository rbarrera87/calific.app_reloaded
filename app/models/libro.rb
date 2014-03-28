class Libro <ActiveRecord::Base
  self.table_name = "libros"
  has_many :prestamo_libros, class_name: PrestamoLibro
end
