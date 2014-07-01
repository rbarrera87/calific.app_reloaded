class CreatePreguntas < ActiveRecord::Migration
  def change
    create_table :preguntas do |t|
      t.text :pregunta
      t.references :encuesta, index: true

      t.timestamps
    end
  end
end
