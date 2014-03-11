class AddDefaultValuePresenteToAsistencias < ActiveRecord::Migration
  def change
    change_column :asistencias, :presente, :boolean, default: false
  end
end
