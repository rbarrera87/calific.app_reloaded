class ChangeTableNameFieldsToAdeudos < ActiveRecord::Migration
  def change
  	rename_column :adeudos, :multa, :multa_dia
  	rename_column :adeudos, :concepto, :comentarios
  end
end
