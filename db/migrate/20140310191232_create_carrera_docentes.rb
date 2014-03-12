class CreateCarreraDocentes < ActiveRecord::Migration
  def change
  create_table :carrera_docentes do |t|
  t.integer :carrera_id, null: false
  t.integer :docente_id, null: false
  t.index [:carrera_id, :docente_id], unique: true

  t.timestamps
    end
  end
end
