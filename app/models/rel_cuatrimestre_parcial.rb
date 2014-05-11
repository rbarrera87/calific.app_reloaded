class RelCuatrimestreParcial < ActiveRecord::Base
  self.table_name = "rel_cuatrimestre_parciales"
  belongs_to :cuatrimestre
  belongs_to :parcial
end
