class Indicador < ActiveRecord::Base
  self.table_name = "indicadores"
  has_many :rel_parcial_indicadores
  has_many :parciales, through: :rel_parcial_indicadores
end
