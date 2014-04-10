class CreateGradosGrupos < ActiveRecord::Migration
  def change
    create_table :grados_grupos do |t|
      t.integer :grado_id
      t.integer :grupo_id
      t.integer :carrera_id

      t.timestamps
    end
  end
end
