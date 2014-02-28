class AddTsuIngenieriaToPerfiles < ActiveRecord::Migration
  def change
    add_column :perfiles, :tsu_ingenieria, :boolean
  end
end
