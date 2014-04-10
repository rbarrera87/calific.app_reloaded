class AddEstadoToCarrera < ActiveRecord::Migration
  def change
    add_column :carreras, :estado, :boolean
  end
end
