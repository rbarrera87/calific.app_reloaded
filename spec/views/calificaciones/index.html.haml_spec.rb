require 'spec_helper'

describe "calificaciones/index" do
  before(:each) do
    assign(:calificaciones, [
      stub_model(Calificaciones,
        :calificacion_ordinaria => "Calificacion Ordinaria",
        :calificacion_remedial => "Calificacion Remedial",
        :calificacion_extraordinaria => "Calificacion Extraordinaria",
        :calificacion_final => "Calificacion Final"
      ),
      stub_model(Calificaciones,
        :calificacion_ordinaria => "Calificacion Ordinaria",
        :calificacion_remedial => "Calificacion Remedial",
        :calificacion_extraordinaria => "Calificacion Extraordinaria",
        :calificacion_final => "Calificacion Final"
      )
    ])
  end

  it "renders a list of calificaciones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Calificacion Ordinaria".to_s, :count => 2
    assert_select "tr>td", :text => "Calificacion Remedial".to_s, :count => 2
    assert_select "tr>td", :text => "Calificacion Extraordinaria".to_s, :count => 2
    assert_select "tr>td", :text => "Calificacion Final".to_s, :count => 2
  end
end
