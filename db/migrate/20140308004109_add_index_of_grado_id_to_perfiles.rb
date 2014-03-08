class AddIndexOfGradoIdToPerfiles < ActiveRecord::Migration
  def change
  		add_index :perfiles, :grado_id, unique: true
  end
end
