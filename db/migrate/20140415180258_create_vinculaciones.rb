class CreateVinculaciones < ActiveRecord::Migration
  def change
    create_table :vinculaciones do |t|
      t.integer :carrera_id
      t.integer :perfil_id
      t.string :nombre_proyecto
      t.string :nombre_director
      t.date :fecha_inicio
      t.date :fecha_fin

      t.timestamps
    end
  end
end
