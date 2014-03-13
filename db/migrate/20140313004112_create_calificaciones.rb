class CreateCalificaciones < ActiveRecord::Migration
  def change
    create_table :calificaciones do |t|
      t.string :calificacion_ordinaria
      t.string :calificacion_remedial
      t.string :calificacion_extraordinaria
      t.string :calificacion_final

      t.timestamps
    end
  end
end
