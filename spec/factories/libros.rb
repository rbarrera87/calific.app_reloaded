# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :libro do
    nombre "MyString"
    editorial "MyString"
    autor "MyString"
    categoria "MyString"
  end
end
