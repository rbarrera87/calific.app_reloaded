class CreateRelAsignaturasParciales < ActiveRecord::Migration
  def change
    create_table :rel_asignatura_parciales do |t|
      t.integer :asignatura_id
      t.integer :parcial_id
      t.timestamps
    end
    add_index :rel_asignatura_parciales, :asignatura_id
    add_index :rel_asignatura_parciales, :parcial_id
  end
end
