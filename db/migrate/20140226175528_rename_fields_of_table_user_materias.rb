class RenameFieldsOfTableUserMaterias < ActiveRecord::Migration
  def change
 	#rename_column :user_asignaturas, :subject_id, :asignatura_id 
 	#remove_index(:user_subjects, :name => 'user_asignaturas')
  	#add_index :user_asignaturas, [:user_id, :asignatura_id], unique: true
  end
end
