class DropTableTablaLibros < ActiveRecord::Migration
  def change
  	drop_table :table_libros
  end
end
