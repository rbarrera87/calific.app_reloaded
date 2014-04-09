require 'spec_helper'

describe "sh_criterios/edit" do
  before(:each) do
    @sh_criterio = assign(:sh_criterio, stub_model(ShCriterio,
      :nombre => "MyString",
      :porcentaje => 1,
      :rubro_uno => 1,
      :rubro_dos => 1,
      :rubro_tres => 1,
      :type => ""
    ))
  end

  it "renders the edit sh_criterio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sh_criterio_path(@sh_criterio), "post" do
      assert_select "input#sh_criterio_nombre[name=?]", "sh_criterio[nombre]"
      assert_select "input#sh_criterio_porcentaje[name=?]", "sh_criterio[porcentaje]"
      assert_select "input#sh_criterio_rubro_uno[name=?]", "sh_criterio[rubro_uno]"
      assert_select "input#sh_criterio_rubro_dos[name=?]", "sh_criterio[rubro_dos]"
      assert_select "input#sh_criterio_rubro_tres[name=?]", "sh_criterio[rubro_tres]"
      assert_select "input#sh_criterio_type[name=?]", "sh_criterio[type]"
    end
  end
end