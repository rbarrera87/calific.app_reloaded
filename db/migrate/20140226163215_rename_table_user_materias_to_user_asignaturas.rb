class RenameTableUserMateriasToUserAsignaturas < ActiveRecord::Migration
  def change
  	rename_table :user_materias, :user_asignaturas
  end
end
