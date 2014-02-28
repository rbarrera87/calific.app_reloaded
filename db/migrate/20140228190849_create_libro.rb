class CreateLibro < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :nombre
      t.string :editorial
      t.string :autor
      t.string :categoria

      t.timestamps
    end
  end
end
