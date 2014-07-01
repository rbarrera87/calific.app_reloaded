class CreateDocente < ActiveRecord::Migration
  def change
  create_table :docentes do |t|
  t.integer :perfil_id, null: false
  t.integer :carrera_id, null: false
  t.index [:perfil_id, :carrera_id], unique: true
  t.timestamps
  end
  end
end
