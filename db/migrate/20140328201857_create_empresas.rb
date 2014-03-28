class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :direcion
      t.integer :numero
      t.integer :telefono
      t.string :razon_social
      t.string :estado
      t.string :municipio
      t.string :descripcion

      t.timestamps
    end
  end
end
