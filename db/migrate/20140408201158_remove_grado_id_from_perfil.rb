class RemoveGradoIdFromPerfil < ActiveRecord::Migration
  def change
    remove_column :perfiles, :grado_id, :integer
  end
end
