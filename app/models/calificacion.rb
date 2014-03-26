class Calificacion < ActiveRecord::Base
  self.table_name = "calificaciones"

  def self.calificacion(reprobado)
    where("calificacion_final  < ?", reprobado)
  end
   scope :reprobado, calificacion(8)

   def self.calificacion_aprobado(aprobado)
    where("calificacion_final  >= ?", aprobado)
  end
   scope :aprobado, calificacion_aprobado(8)

end


