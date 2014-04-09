class RemoveGradoIdGrupoIdFromAsistencia < ActiveRecord::Migration
  def change
    add_column :asistencias, :estado, :string
    remove_column :asistencias, :grado_id, :integer
    remove_column :asistencias, :grupo_id, :integer
    remove_column :asistencias, :presente, :boolean

  end
end
