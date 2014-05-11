require 'spec_helper'

describe "calificaciones/index" do
  before(:each) do
    assign(:calificaciones, [
      stub_model(Calificacion,
        :primer_parcial => "Primer Parcial",
        :segundo_parcial => "Segundo Parcial",
        :tercer_parcial => "Tercer Parcial",
        :calificacion_final => "Calificacion Final"
      ),
      stub_model(Calificacion,
        :primer_parcial => "Primer Parcial",
        :segundo_parcial => "Segundo Parcial",
        :tercer_parcial => "Tercer Parcial",
        :calificacion_final => "Calificacion Final"
      )
    ])
  end

  it "renders a list of calificaciones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Primer Parcial".to_s, :count => 2
    assert_select "tr>td", :text => "Segundo Parcial".to_s, :count => 2
    assert_select "tr>td", :text => "Tercer Parcial".to_s, :count => 2
    assert_select "tr>td", :text => "Calificacion Final".to_s, :count => 2
  end
end
