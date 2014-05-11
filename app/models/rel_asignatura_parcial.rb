class RelAsignaturaParcial < ActiveRecord::Base
  validates_presence_of :asignatura_id, :parcial_id
  belongs_to :asignatura
  belongs_to :parcial
end
