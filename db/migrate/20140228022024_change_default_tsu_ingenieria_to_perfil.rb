class ChangeDefaultTsuIngenieriaToPerfil < ActiveRecord::Migration
  def change
  	change_column :perfiles, :tsu_ingenieria, :boolean, :default: false 

  end
end
