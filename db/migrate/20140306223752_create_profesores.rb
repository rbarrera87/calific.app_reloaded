class CreateProfesores < ActiveRecord::Migration
  def change
    create_table :profesores do |t|
      t.string :tipo_horario
      t.string :estado

      t.timestamps
    end
  end
end
