# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	sequence :email do |n|
		email = "user#{n}@mail.com"
	end
  factory :user do
  	email
  	password "password"
  end
end
