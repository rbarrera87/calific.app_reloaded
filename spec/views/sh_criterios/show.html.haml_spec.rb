require 'spec_helper'

describe "sh_criterios/show" do
  before(:each) do
    @sh_criterio = assign(:sh_criterio, stub_model(ShCriterio,
      :porcentaje => 1,
      :rubro_uno => 2,
      :rubro_dos => 3,
      :rubro_tres => 4,
      :criterio_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
