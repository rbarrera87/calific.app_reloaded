class CreateRelesParcialIndicadores < ActiveRecord::Migration
  def change
    create_table :rel_parcial_indicadores do |t|
      t.integer :parcial_id
      t.integer :indicador_id

      t.timestamps
    end
    add_index :rel_parcial_indicadores, :parcial_id
    add_index :rel_parcial_indicadores, :indicador_id
  end
end
