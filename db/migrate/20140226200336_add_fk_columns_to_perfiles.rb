class AddFkColumnsToPerfiles < ActiveRecord::Migration
  def change
    add_column :perfiles, :user_id, :integer
    add_column :perfiles, :grupo_id, :integer
    add_column :perfiles, :carrera_id, :integer
    change_column_null :perfiles, :user_id,  false
  	change_column_null :perfiles, :grupo_id, false
  	change_column_null :perfiles, :carrera_id, false

  	add_index  :perfiles, [:user_id, :grupo_id, :carrera_id], unique: true 
  end
  end
   
