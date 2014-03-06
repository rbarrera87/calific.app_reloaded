class CreateTutorGrupos < ActiveRecord::Migration
  def change
    create_table :tutor_grupos do |t|
      t.integer :carrera_id
      t.integer :grupo_id
      t.integer :grado_id
      t.integer :perfil_id

      t.timestamps
    end
  end
end
