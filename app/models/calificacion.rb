class Calificacion < ActiveRecord::Base
  belongs_to :user
  belongs_to :parcial
  belongs_to :indicador
  belongs_to :asignatura
end
