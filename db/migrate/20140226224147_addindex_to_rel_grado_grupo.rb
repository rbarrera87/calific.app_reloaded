class AddindexToRelGradoGrupo < ActiveRecord::Migration
  def change
  	add_index  :rel_grado_grupos, [:grado_id, :grupo_id], unique: true 
  end
end
