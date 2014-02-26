class CreateCarreras < ActiveRecord::Migration
  def change
    create_table :carreras do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
