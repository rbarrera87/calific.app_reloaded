class AddIndexToDocente < ActiveRecord::Migration
  def change
  	add_index :docentes, [:perfil_id, :carrera_id], unique: true
  end
end
