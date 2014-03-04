class CreateAdeudos < ActiveRecord::Migration
  def change
    create_table :adeudos do |t|
      t.integer :numero_libros
      t.decimal :multa
      t.decimal :total
      t.string :concepto
      t.integer :perfil_id
      t.integer :libro_id

      t.timestamps
    end
  end
end