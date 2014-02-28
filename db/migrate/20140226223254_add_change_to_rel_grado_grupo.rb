class AddChangeToRelGradoGrupo < ActiveRecord::Migration
  def change
  	change_column_null :rel_grado_grupos, :grado_id, false
  	change_column_null :rel_grado_grupos, :grupo_id, false

  	
  end
end
