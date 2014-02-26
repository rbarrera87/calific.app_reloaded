class CreateGrados < ActiveRecord::Migration
  def change
    create_table :grados do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
