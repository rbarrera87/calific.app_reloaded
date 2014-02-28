# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :adeudo do
    numero_libros 1
    multa "9.99"
    total "9.99"
    concepto "MyString"
    perfil_id 1
    libro_id 1
  end
end
