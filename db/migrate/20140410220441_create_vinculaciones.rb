class CreateVinculaciones < ActiveRecord::Migration
  def change
    create_table :vinculaciones do |t|
      t.integer :carrera_id
      t.integer :perfil_id
      t.string :nombre_proyecto

      t.timestamps
    end
  end
end
