require 'spec_helper'

describe "calificaciones/new" do
  before(:each) do
    assign(:calificaciones, stub_model(Calificaciones,
      :calificacion_ordinaria => "MyString",
      :calificacion_remedial => "MyString",
      :calificacion_extraordinaria => "MyString",
      :calificacion_final => "MyString"
    ).as_new_record)
  end

  it "renders new calificaciones form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", calificaciones_index_path, "post" do
      assert_select "input#calificaciones_calificacion_ordinaria[name=?]", "calificaciones[calificacion_ordinaria]"
      assert_select "input#calificaciones_calificacion_remedial[name=?]", "calificaciones[calificacion_remedial]"
      assert_select "input#calificaciones_calificacion_extraordinaria[name=?]", "calificaciones[calificacion_extraordinaria]"
      assert_select "input#calificaciones_calificacion_final[name=?]", "calificaciones[calificacion_final]"
    end
  end
end
