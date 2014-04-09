class AddGradoGrupoIdToPerfil < ActiveRecord::Migration
  def change
    add_column :perfiles, :grado_grupo_id, :integer
  end
end
