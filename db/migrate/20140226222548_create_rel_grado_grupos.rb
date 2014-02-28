class CreateRelGradoGrupos < ActiveRecord::Migration
  def change
    create_table :rel_grado_grupos do |t|
      t.integer :grado_id
      t.integer :grupo_id

      t.timestamps
    end
  end
end
