class AddIndexFieldsDocenteIdToPerfilesCarrerasGruposGrados < ActiveRecord::Migration
  def change
  	add_index  :perfiles, :docente_id, unique: true
  	add_index  :carreras, :docente_id, unique: true
  	add_index  :grupos, :docente_id, unique: true
  	add_index  :grados, :docente_id, unique: true
  	  end
end
