require 'spec_helper'

describe "sb_criterios/edit" do
  before(:each) do
    @sb_criterio = assign(:sb_criterio, stub_model(SbCriterio,
      :nombre => "MyString",
      :porcentaje => 1,
      :rubro_uno => 1,
      :rubro_dos => 1,
      :rubro_tres => 1,
      :type => ""
    ))
  end

  it "renders the edit sb_criterio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sb_criterio_path(@sb_criterio), "post" do
      assert_select "input#sb_criterio_nombre[name=?]", "sb_criterio[nombre]"
      assert_select "input#sb_criterio_porcentaje[name=?]", "sb_criterio[porcentaje]"
      assert_select "input#sb_criterio_rubro_uno[name=?]", "sb_criterio[rubro_uno]"
      assert_select "input#sb_criterio_rubro_dos[name=?]", "sb_criterio[rubro_dos]"
      assert_select "input#sb_criterio_rubro_tres[name=?]", "sb_criterio[rubro_tres]"
      assert_select "input#sb_criterio_type[name=?]", "sb_criterio[type]"
    end
  end
end
