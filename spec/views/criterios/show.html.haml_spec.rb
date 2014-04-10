require 'spec_helper'

describe "criterios/show" do
  before(:each) do
    @criterio = assign(:criterio, stub_model(Criterio,
      :descripcion => "Descripcion",
      :carrera_id => 1,
      :calificacion_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descripcion/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
