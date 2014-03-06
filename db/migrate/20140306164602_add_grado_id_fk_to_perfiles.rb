class AddGradoIdFkToPerfiles < ActiveRecord::Migration
  def change
  	add_column :perfiles, :grado_id, :integer, null: false
  end
end
