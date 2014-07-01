class RenameTableMateriasToAsignaturas < ActiveRecord::Migration
  def change
  	rename_table :materias, :asignaturas
  end
end
