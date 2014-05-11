class RelParcialIndicador < ActiveRecord::Base
  self.table_name = "rel_parcial_indicadores"
  belongs_to :parcial
  belongs_to :indicador
end
