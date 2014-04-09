class RemoveColumnToCalificaciones < ActiveRecord::Migration
  def change
    remove_column :calificaciones, :perfil_id, :integer
  end
end
