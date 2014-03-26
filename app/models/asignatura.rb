class Asignatura < ActiveRecord::Base
  validates_presence_of :nombre
  self.all.each do |asignatura|
  scope asignatura.nombre, ->{ where(id: asignatura.id) }
end
end

