class CreateRubros < ActiveRecord::Migration
  def change
    create_table :rubros do |t|
      t.integer :sb1
      t.integer :sb2
      t.integer :sb3
      t.integer :sh1
      t.integer :sh2
      t.integer :sh3
      t.integer :s1
      t.integer :s2
      t.integer :s3
      t.integer :calificacion_id
      t.integer :asignatura_id

      t.timestamps
    end
  end
end
