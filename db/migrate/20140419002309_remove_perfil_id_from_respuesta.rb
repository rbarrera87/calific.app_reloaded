class RemovePerfilIdFromRespuesta < ActiveRecord::Migration
  def change
    remove_column :respuestas, :perfil_id, :integer
  end
end
