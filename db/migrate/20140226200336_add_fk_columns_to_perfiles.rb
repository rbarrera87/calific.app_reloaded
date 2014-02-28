class AddFkColumnsToPerfiles < ActiveRecord::Migration
  def change
    add_column :perfiles, :user_id, :integer
    add_column :perfiles, :grupo_id, :integer
    add_column :perfiles, :carrera_id, :integer
  end
   
end
