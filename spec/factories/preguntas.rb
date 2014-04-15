# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pregunta do
    pregunta "MyText"
    encuesta nil
  end
end
