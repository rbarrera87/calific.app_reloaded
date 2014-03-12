require 'spec_helper'

describe "consejeros/show" do
  before(:each) do
    @consejero = assign(:consejero, stub_model(Consejero,
      :carrera_id => 1,
      :grupo_id => 2,
      :grado_id => 3,
      :perfil_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
