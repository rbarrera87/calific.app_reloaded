class RenameTableAdeudos < ActiveRecord::Migration
  def change
  	rename_table :adeudos, :prestamo_libros
  end
end
