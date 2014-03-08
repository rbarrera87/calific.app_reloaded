class CreateTableDocentes < ActiveRecord::Migration
  def change
    create_table :docentes do |t|
      t.integer :perfil_id,null: false
      t.integer :carrera_id,null: false
      t.timestamps
     true
    end
  end
end
