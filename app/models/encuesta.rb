class Encuesta < ActiveRecord::Base
	has_many :preguntas, dependent: :destroy
	accepts_nested_attributes_for :preguntas, reject_if: lambda { |a| a[:pregunta].blank?}, allow_destroy: true
end
