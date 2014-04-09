class AddColumnToCriterio < ActiveRecord::Migration
  def change
    add_column :criterios, :carrera_id, :integer
  end
end
