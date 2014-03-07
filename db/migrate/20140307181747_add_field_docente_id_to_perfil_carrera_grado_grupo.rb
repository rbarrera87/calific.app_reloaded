class AddFieldDocenteIdToPerfilCarreraGradoGrupo < ActiveRecord::Migration
  def change
  	add_column :perfiles, :docente_id, :integer,null: false
  	add_column :carreras, :docente_id, :integer,null: false
  	add_column :grados, :docente_id, :integer,null: false
  	add_column :grupos, :docente_id, :integer,null: false
  end
end
