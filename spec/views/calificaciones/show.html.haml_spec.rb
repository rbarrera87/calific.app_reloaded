require 'spec_helper'

describe "calificaciones/show" do
  before(:each) do
    @calificacion = assign(:calificacion, stub_model(Calificacion,
      :primer_parcial => "Primer Parcial",
      :segundo_parcial => "Segundo Parcial",
      :tercer_parcial => "Tercer Parcial",
      :calificacion_final => "Calificacion Final"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Primer Parcial/)
    rendered.should match(/Segundo Parcial/)
    rendered.should match(/Tercer Parcial/)
    rendered.should match(/Calificacion Final/)
  end
end
