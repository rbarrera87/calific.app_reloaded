class AddFieldsFromGrupo < ActiveRecord::Migration
  def change
    add_column :grupos, :carrera_id, :integer
    add_column :grupos, :grado_id, :integer
  end
end
