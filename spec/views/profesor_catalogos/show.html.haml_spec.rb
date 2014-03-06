require 'spec_helper'

describe "profesor_catalogos/show" do
  before(:each) do
    @profesor_catalogo = assign(:profesor_catalogo, stub_model(ProfesorCatalogo,
      :tipo_horario => "Tipo Horario",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo Horario/)
    rendered.should match(/Estado/)
  end
end
