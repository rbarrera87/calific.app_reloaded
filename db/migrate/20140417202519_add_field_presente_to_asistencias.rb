class AddFieldPresenteToAsistencias < ActiveRecord::Migration
  def change
    add_column :asistencias, :presente, :string
  end
end
