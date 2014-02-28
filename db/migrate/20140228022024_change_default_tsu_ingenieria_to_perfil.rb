class ChangeDefaultTsuIngenieriaToPerfil < ActiveRecord::Migration
  def change
  	change_column :perfiles, :tsu_ingenieria, :boolean, :default => 0

  end
end
