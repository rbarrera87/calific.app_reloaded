class CreateCuatrimestres < ActiveRecord::Migration
  def change
    create_table :cuatrimestres do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
