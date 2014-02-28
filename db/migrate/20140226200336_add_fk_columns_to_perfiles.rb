class AddFkColumnsToPerfiles < ActiveRecord::Migration
  def change
add_column :perfiles, :user_id, :integer, null: false
add_column :perfiles, :grupo_id, :integer, null: false
add_column :perfiles, :carrera_id, :integer, null: false
add_index  :perfiles, [:user_id, :grupo_id, :carrera_id], unique: true
  end
  end

