class AddFechaPrestamoToPrestamolibros < ActiveRecord::Migration
  def change
    add_column :prestamo_libros, :fecha_prestamo, :date
  end
end
