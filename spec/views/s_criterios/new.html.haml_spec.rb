require 'spec_helper'

describe "s_criterios/new" do
  before(:each) do
    assign(:s_criterio, stub_model(SCriterio,
      :nombre => "MyString",
      :porcentaje => 1,
      :rubro_uno => 1,
      :rubro_dos => 1,
      :rubro_tres => 1,
      :type => ""
    ).as_new_record)
  end

  it "renders new s_criterio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", s_criterios_path, "post" do
      assert_select "input#s_criterio_nombre[name=?]", "s_criterio[nombre]"
      assert_select "input#s_criterio_porcentaje[name=?]", "s_criterio[porcentaje]"
      assert_select "input#s_criterio_rubro_uno[name=?]", "s_criterio[rubro_uno]"
      assert_select "input#s_criterio_rubro_dos[name=?]", "s_criterio[rubro_dos]"
      assert_select "input#s_criterio_rubro_tres[name=?]", "s_criterio[rubro_tres]"
      assert_select "input#s_criterio_type[name=?]", "s_criterio[type]"
    end
  end
end
