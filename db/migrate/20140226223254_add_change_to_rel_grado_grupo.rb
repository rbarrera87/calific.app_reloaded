class AddChangeToRelGradoGrupo < ActiveRecord::Migration
  def change
  	change_column_null :rel_grado_grupos, :grado_id, :grupo_id, false
  	

  	
  end
end
