class CreatePerfilesAsignaturas < ActiveRecord::Migration
  def change
    create_table :perfiles_asignaturas do |t|
      t.integer :perfil_id
      t.integer :asignatura_id

      t.timestamps
    end
  end
end
