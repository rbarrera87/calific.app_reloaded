class CreateRelCuatrimestresParciales < ActiveRecord::Migration
  def change
    create_table :rel_cuatrimestre_parciales do |t|
      t.integer :cuatrimestre_id
      t.integer :parcial_id

      t.timestamps
    end
    add_index :rel_cuatrimestre_parciales, :cuatrimestre_id
    add_index :rel_cuatrimestre_parciales, :parcial_id
  end
end
