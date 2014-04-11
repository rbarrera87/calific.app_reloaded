class CreateEncuestas < ActiveRecord::Migration
  def change
    create_table :encuestas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
