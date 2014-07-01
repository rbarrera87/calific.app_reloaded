class AddFieldsFromCarrera < ActiveRecord::Migration
  def change
    add_column :carreras, :criterio_id, :integer
  end
end
