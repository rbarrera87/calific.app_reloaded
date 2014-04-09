class AddColumnToAsignatura < ActiveRecord::Migration
  def change
    add_column :asignaturas, :carrera_id, :integer
  end
end
