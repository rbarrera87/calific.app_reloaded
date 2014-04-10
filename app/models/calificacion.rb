class Calificacion < ActiveRecord::Base
  self.table_name = "calificaciones"

  has_many :criterios, dependent: :destroy, class_name: :Criterio
  accepts_nested_attributes_for :criterios

  # has_many :s_criterios, dependent: :destroy, class_name: :Criterio
  # accepts_nested_attributes_for :s_criterios

  # has_many :sb_criterios, dependent: :destroy, class_name: :Criterio
  # accepts_nested_attributes_for :sb_criterios

  # has_many :sh_criterios, dependent: :destroy, class_name: :Criterio
  # accepts_nested_attributes_for :sh_criterios

  belongs_to :asignatura
  belongs_to :grupo

  has_one :rubro

  has_


end
