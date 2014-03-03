class CreateStiCriteriosInidicadores < ActiveRecord::Migration
  def change
    create_table :sti_criterios_inidicadores do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
