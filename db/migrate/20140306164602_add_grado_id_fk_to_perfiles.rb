class AddGradoIdFkToPerfiles < ActiveRecord::Migration
  def change
add_column :perfiles, :grado_id, :integer, null: false
add_index :perfiles, :grado_id, unique: true
  end
end
