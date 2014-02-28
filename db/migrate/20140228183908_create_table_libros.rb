class CreateTableLibros < ActiveRecord::Migration
  def change
    create_table :table_libros do |t|
      t.string :nombre_libro
      t.string :editorial
      t.string :autor
      t.string :categoria

      t.timestamps
    end
  end
end
