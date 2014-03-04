class RenameCriterioIndicadoresToCriteriosIndicadoresTable < ActiveRecord::Migration
  def change
  	rename_table :criterios_indicadores, :criterio_indicadores
  end
end
