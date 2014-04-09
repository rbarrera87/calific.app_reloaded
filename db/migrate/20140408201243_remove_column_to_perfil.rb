class RemoveColumnToPerfil < ActiveRecord::Migration
  def change
    remove_column :perfiles, :grado_grupo_id, :integer
  end
end
