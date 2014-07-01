class CreateAsistencias < ActiveRecord::Migration
  def change
    create_table :asistencias do |t|
      t.boolean :presente
      t.integer :perfil_id, null: false
      t.integer :grupo_id, null: false
      t.integer :grado_id, null: false
      t.timestamps
    end
  end
end
