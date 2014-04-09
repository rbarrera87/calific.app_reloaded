class RemoveCarreraIdGradoIdGrupoIdFromPerfiles < ActiveRecord::Migration
  def change
    remove_column :perfiles, :carrera_id, :integer
    remove_column :perfiles, :grado_id, :integer
    remove_column :perfiles, :grupo_id, :integer
  end
end
