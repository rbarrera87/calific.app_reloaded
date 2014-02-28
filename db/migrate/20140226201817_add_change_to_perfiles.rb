class AddChangeToPerfiles < ActiveRecord::Migration
  def change
  	change_column_null :perfiles, :user_id,  false
  	change_column_null :perfiles, :grupo_id, false
  	change_column_null :perfiles, :carrera_id, false

  	add_index  :perfiles, [:user_id, :grupo_id, :carrera_id], unique: true 
  end
end
