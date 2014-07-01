require 'spec_helper'

describe "calificaciones/edit" do
  before(:each) do
    @calificaciones = assign(:calificaciones, stub_model(Calificaciones,
      :calificacion_ordinaria => "MyString",
      :calificacion_remedial => "MyString",
      :calificacion_extraordinaria => "MyString",
      :calificacion_final => "MyString"
    ))
  end

  it "renders the edit calificaciones form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", calificaciones_path(@calificaciones), "post" do
      assert_select "input#calificaciones_calificacion_ordinaria[name=?]", "calificaciones[calificacion_ordinaria]"
      assert_select "input#calificaciones_calificacion_remedial[name=?]", "calificaciones[calificacion_remedial]"
      assert_select "input#calificaciones_calificacion_extraordinaria[name=?]", "calificaciones[calificacion_extraordinaria]"
      assert_select "input#calificaciones_calificacion_final[name=?]", "calificaciones[calificacion_final]"
    end
  end
end
