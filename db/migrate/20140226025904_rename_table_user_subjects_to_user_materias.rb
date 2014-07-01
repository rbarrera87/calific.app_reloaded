class RenameTableUserSubjectsToUserMaterias < ActiveRecord::Migration
  def change
  	 rename_table :user_subjects, :user_materias
  end
end
