# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :calificacion do
    user_id 1
    parcial_id 1
    indicador_id 1
    asignatura_id 1
    valor 1
  end
end
