class RemoveIndexGradoIdToPerfiles < ActiveRecord::Migration
  def up
    remove_index :perfiles, :grado_id
    remove_index :perfiles, [:user_id, :grupo_id, :carrera_id]
    add_index  :perfiles, [:user_id, :grupo_id, :carrera_id, :grado_id], name: 'constraint_in_perfiles', unique: true
  end
  def down
    add_index :perfiles, :grado_id
    add_index  :perfiles, [:user_id, :grupo_id, :carrera_id], unique: true
    remove_index :perfiles, name: :constraint_in_perfiles
  end
end
