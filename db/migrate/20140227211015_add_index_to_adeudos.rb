class AddIndexToAdeudos < ActiveRecord::Migration
  def change
  	add_index :adeudos, [:perfil_id, :libro_id ], unique: true
  	change_column_null :adeudos, :perfil_id, false
  	change_column_null :adeudos, :libro_id, false

  end
end
