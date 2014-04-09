class CreateCriterios < ActiveRecord::Migration
  def change
    create_table :criterios do |t|
      t.string :nombre
      t.integer :porcentaje
      t.integer :rubro_uno
      t.integer :rubro_dos
      t.integer :rubro_tres
      t.string :type

      t.timestamps
    end
  end
end
