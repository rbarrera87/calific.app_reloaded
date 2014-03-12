class CreateConsejeros < ActiveRecord::Migration
  def change
    create_table :consejeros do |t|
      t.integer :carrera_id
      t.integer :grupo_id
      t.integer :grado_id
      t.integer :perfil_id

      t.timestamps
    end
  end
end
