class FixTablePerfils < ActiveRecord::Migration
  def change
  	rename_table :perfils, :perfiles
  end
end
