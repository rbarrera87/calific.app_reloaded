class AsignaturaCalificacion < ActiveRecord::Base
  belongs_to :asignatura
  belongs_to :calificacion
end
