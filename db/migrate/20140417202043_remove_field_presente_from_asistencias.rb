class RemoveFieldPresenteFromAsistencias < ActiveRecord::Migration
  def change
    remove_column :asistencias, :presente, :boolean, default: true
  end
end
