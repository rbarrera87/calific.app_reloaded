require 'spec_helper'

describe "calificaciones/show" do
  before(:each) do
    @calificaciones = assign(:calificaciones, stub_model(Calificaciones,
      :calificacion_ordinaria => "Calificacion Ordinaria",
      :calificacion_remedial => "Calificacion Remedial",
      :calificacion_extraordinaria => "Calificacion Extraordinaria",
      :calificacion_final => "Calificacion Final"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Calificacion Ordinaria/)
    rendered.should match(/Calificacion Remedial/)
    rendered.should match(/Calificacion Extraordinaria/)
    rendered.should match(/Calificacion Final/)
  end
end
