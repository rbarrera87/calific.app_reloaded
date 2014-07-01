class RenameColumnDescrpciontoDesciptionOfGradosTable < ActiveRecord::Migration
  def change
  	rename_column :grupos, :descrpcion, :descripcion 
  end
end
