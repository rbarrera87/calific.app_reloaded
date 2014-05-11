class Calificacion < ActiveRecord::Base
validates_numericality_of :primer_parcial,:segundo_parcial, :tercer_parcial, :calificacion_final, :greater_than => 0, :less_than => 11	
end
