# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :materium, :class => 'Materia' do
    nombre "MyString"
    descripcion "MyString"
  end
end
