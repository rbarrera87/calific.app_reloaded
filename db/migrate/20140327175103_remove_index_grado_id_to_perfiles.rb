class RemoveIndexGradoIdToPerfiles < ActiveRecord::Migration
  def change
  	remove_index :perfiles, :grado_id
  end
end
