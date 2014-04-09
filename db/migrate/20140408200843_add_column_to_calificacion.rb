class AddColumnToCalificacion < ActiveRecord::Migration
  def change
    add_column :calificaciones, :grupo_id, :integer
  end
end
