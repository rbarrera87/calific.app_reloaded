class AddColumnsPerfilIdAsignaturaIdToCalificacion < ActiveRecord::Migration
  def change
    add_column :calificaciones, :perfil_id, :integer
    add_column :calificaciones, :asignatura_id, :integer
  end
end
