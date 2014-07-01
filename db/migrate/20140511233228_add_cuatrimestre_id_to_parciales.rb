class AddCuatrimestreIdToParciales < ActiveRecord::Migration
  def change
    add_column :parciales, :cuatrimestre_id, :integer
    add_index :parciales, :cuatrimestre_id
  end
end
