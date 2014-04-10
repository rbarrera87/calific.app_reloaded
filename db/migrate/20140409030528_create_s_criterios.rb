class CreateSCriterios < ActiveRecord::Migration
  def change
    create_table :s_criterios do |t|
      t.integer :porcentaje
      t.integer :rubro_uno
      t.integer :rubro_dos
      t.integer :rubro_tres
      t.integer :criterio_id

      t.timestamps
    end
  end
end
