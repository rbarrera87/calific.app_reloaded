class AddGradoIdToAsignatura < ActiveRecord::Migration
  def change
    add_column :asignaturas, :grupo_id, :integer
  end
end
