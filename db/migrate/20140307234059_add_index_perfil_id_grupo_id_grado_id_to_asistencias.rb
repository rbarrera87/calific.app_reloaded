class AddIndexPerfilIdGrupoIdGradoIdToAsistencias < ActiveRecord::Migration
  def change
  	add_index  :asistencias, [:grado_id, :grupo_id, :perfil_id], unique: true
  end
end
