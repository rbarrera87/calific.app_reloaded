# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :criterios_indicadore, :class => 'CriteriosIndicadores' do
    nombre "MyString"
    descripcion "MyString"
    estado "MyString"
    type ""
  end
end
