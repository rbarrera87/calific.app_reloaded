require 'spec_helper'

describe "s_criterios/show" do
  before(:each) do
    @s_criterio = assign(:s_criterio, stub_model(SCriterio,
      :nombre => "Nombre",
      :porcentaje => 1,
      :rubro_uno => 2,
      :rubro_dos => 3,
      :rubro_tres => 4,
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/Type/)
  end
end
