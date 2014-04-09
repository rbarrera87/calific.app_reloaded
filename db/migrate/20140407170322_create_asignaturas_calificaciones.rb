class CreateAsignaturasCalificaciones < ActiveRecord::Migration
  def change
    create_table :asignaturas_calificaciones do |t|
      t.integer :asignatura_id
      t.integer :calificacion_id

      t.timestamps
    end
  end
end
