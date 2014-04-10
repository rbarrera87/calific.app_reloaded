require 'spec_helper'

describe "criterios/new" do
  before(:each) do
    assign(:criterio, stub_model(Criterio,
      :descripcion => "MyString",
      :carrera_id => 1,
      :calificacion_id => 1
    ).as_new_record)
  end

  it "renders new criterio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", criterios_path, "post" do
      assert_select "input#criterio_descripcion[name=?]", "criterio[descripcion]"
      assert_select "input#criterio_carrera_id[name=?]", "criterio[carrera_id]"
      assert_select "input#criterio_calificacion_id[name=?]", "criterio[calificacion_id]"
    end
  end
end
