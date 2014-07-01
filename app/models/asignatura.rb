class Asignatura < ActiveRecord::Base
  validates_presence_of :nombre
  has_many :rel_asignatura_parciales
  has_many :parciales, through: :rel_asignatura_parciales
end
