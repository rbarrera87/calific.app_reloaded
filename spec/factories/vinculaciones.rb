# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vinculacion do
    carrera_id 1
    perfil_id 1
    nombre_proyecto "MyString"
    nombre_director "MyString"
    fecha_inicio "2014-04-15"
    fecha_fin "2014-04-15"
  end
end
