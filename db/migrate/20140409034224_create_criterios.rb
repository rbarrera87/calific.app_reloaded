class CreateCriterios < ActiveRecord::Migration
  def change
    create_table :criterios do |t|
      t.string :descripcion
      t.integer :carrera_id
      t.integer :calificacion_id

      t.timestamps
    end
  end
end
