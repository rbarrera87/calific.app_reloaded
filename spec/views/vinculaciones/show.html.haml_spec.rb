require 'spec_helper'

describe "vinculaciones/show" do
  before(:each) do
    @vinculacion = assign(:vinculacion, stub_model(Vinculacion,
      :carrera_id => 1,
      :perfil_id => 2,
      :nombre_proyecto => "Nombre Proyecto"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Nombre Proyecto/)
  end
end
