class AddTsuIngenieriaToPerfiles < ActiveRecord::Migration
  def change
    add_column :perfiles, :tsu_ingenieria, :boolean, default: false 
  end
end
