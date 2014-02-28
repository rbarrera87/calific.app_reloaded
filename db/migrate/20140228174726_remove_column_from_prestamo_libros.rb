class RemoveColumnFromPrestamoLibros < ActiveRecord::Migration
  def change
    remove_column :prestamo_libros, :numero_libros, :integer
    remove_column :prestamo_libros, :total, :integer
  end
end
