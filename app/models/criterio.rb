class Criterio < ActiveRecord::Base
	has_many :carreras, class_name: :Carrera
	belongs_to :calificacion

	has_many :s_criterios, dependent: :destroy
  accepts_nested_attributes_for :s_criterios

  has_many :sb_criterios, dependent: :destroy
  accepts_nested_attributes_for :sb_criterios	

  has_many :sh_criterios, dependent: :destroy
  accepts_nested_attributes_for :sh_criterios

end
