class CreateCriteriosIndicadores < ActiveRecord::Migration
  def change
    create_table :criterios_indicadores do |t|
      t.string :nombre
      t.string :descripcion
      t.boolean :estado
      t.string :type

      t.timestamps
    end
  end
end
