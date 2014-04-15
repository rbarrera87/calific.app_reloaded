class CreateRespuestas < ActiveRecord::Migration
  def change
    create_table :respuestas do |t|
      t.references :pregunta, index: true
      t.references :perfil, index: true
      t.text :respuesta

      t.timestamps
    end
  end
end
