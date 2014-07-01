class CreateCalificaciones < ActiveRecord::Migration
  def change
    create_table :calificaciones do |t|
      t.integer :user_id
      t.integer :parcial_id
      t.integer :indicador_id
      t.integer :asignatura_id
      t.integer :valor

      t.timestamps
    end
    add_index :calificaciones, :user_id
    add_index :calificaciones, :parcial_id
    add_index :calificaciones, :indicador_id
    add_index :calificaciones, :asignatura_id
  end
end
