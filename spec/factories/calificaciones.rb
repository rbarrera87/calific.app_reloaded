# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :calificacion, :class => 'Calificaciones' do
    calificacion_ordinaria "MyString"
    calificacion_remedial "MyString"
    calificacion_extraordinaria "MyString"
    calificacion_final "MyString"
  end
end
