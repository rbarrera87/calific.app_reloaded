# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rel_cuatrimestr_parciale, :class => 'RelCuatrimestreParcial' do
    cuatrimestre_id 1
    parcial_id 1
  end
end
