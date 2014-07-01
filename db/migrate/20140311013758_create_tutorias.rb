class CreateTutorias < ActiveRecord::Migration
  def change
    create_table :tutorias do |t|
      t.integer :mes1
      t.integer :mes2
      t.integer :mes3
      t.integer :mes4
      t.integer :grado_id
      t.integer :grupo_id
      t.integer :perfil_id

      t.timestamps
    end
  end
end
