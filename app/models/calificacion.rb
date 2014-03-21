class Calificacion < ActiveRecord::Base
  self.table_name = "calificaciones"
  self.all.each do |calificacion|
  scope calificacion.calificacion_ordinaria, ->{ where(calificacion_ordinaria: calificacion.id) }
end
scope :created_before, ->(time) { where("calificacion_ordinaria < 8", time) }
scope :created_after, ->(time) { where("calificacion_ordinaria >= 8", time) }
end


