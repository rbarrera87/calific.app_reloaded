class CreateAsistencias < ActiveRecord::Migration
  def change
    create_table :asistencias do |t|
      t.boolean :presente

      t.timestamps
    end
  end
end
