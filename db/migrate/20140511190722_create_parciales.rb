class CreateParciales < ActiveRecord::Migration
  def change
    create_table :parciales do |t|
      t.string :nombre, null: false

      t.timestamps
    end

  end
end
