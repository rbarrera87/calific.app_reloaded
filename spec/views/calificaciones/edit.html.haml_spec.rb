require 'spec_helper'

describe "calificaciones/edit" do
  before(:each) do
    @calificacion = assign(:calificacion, stub_model(Calificacion,
      :primer_parcial => "MyString",
      :segundo_parcial => "MyString",
      :tercer_parcial => "MyString",
      :calificacion_final => "MyString"
    ))
  end

  it "renders the edit calificacion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", calificacion_path(@calificacion), "post" do
      assert_select "input#calificacion_primer_parcial[name=?]", "calificacion[primer_parcial]"
      assert_select "input#calificacion_segundo_parcial[name=?]", "calificacion[segundo_parcial]"
      assert_select "input#calificacion_tercer_parcial[name=?]", "calificacion[tercer_parcial]"
      assert_select "input#calificacion_calificacion_final[name=?]", "calificacion[calificacion_final]"
    end
  end
end
