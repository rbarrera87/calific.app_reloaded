class AddFieldsFromCalificacion < ActiveRecord::Migration
  def change
    add_column :calificaciones, :asignatura_id, :integer
    add_column :calificaciones, :grupo_id, :integer
  end
end
