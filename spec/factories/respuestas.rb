# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :respuesta do
    pregunta nil
    perfil nil
    respuesta "MyText"
  end
end
