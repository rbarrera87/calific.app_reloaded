# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :asistencia, :class => 'Asistencias' do
    presente false
  end
end
