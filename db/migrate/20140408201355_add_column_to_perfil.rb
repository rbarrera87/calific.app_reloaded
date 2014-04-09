class AddColumnToPerfil < ActiveRecord::Migration
  def change
    add_column :perfiles, :grupo_id, :integer
    add_column :perfiles, :carrera_id, :integer
  end
end
