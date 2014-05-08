class CreatePruebas < ActiveRecord::Migration
  def change
    create_table :pruebas do |t|

      t.timestamps
    end
  end
end
