# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :calificacion do
    primer_parcial "MyString"
    segundo_parcial "MyString"
    tercer_parcial "MyString"
    calificacion_final "MyString"
  end
end
