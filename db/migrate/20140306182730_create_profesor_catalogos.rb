class CreateProfesorCatalogos < ActiveRecord::Migration
  def change
    create_table :profesor_catalogos do |t|
      t.string :tipo_horario
      t.string :estado

      t.timestamps
    end
  end
end
