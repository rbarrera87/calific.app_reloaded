class CreateIndicadores < ActiveRecord::Migration
  def change
    create_table :indicadores do |t|
      t.string :nombre
      t.integer :valor
      t.timestamps
    end
  end
end
