class Cuatrimestre < ActiveRecord::Base
  has_many :rel_cuatrimestre_parciales
  has_many :parciales, through: :rel_cuatrimestre_parciales
end
