class CreateCalificaciones < ActiveRecord::Migration
  def change
    create_table :calificaciones do |t|
      t.string :primer_parcial
      t.string :segundo_parcial
      t.string :tercer_parcial
      t.string :calificacion_final

      t.timestamps
    end
  end
end
