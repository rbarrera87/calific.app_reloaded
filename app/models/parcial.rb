class Parcial < ActiveRecord::Base
  has_many :rel_asignatura_parcial
  has_many :asignaturas, through: :rel_asignatura_parcial
  has_many :rel_parcial_indicador
  has_many :indicadores, through: :rel_parcial_indicador
  belongs_to :cuatrimestre
end
