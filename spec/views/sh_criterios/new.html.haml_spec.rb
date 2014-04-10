require 'spec_helper'

describe "sh_criterios/new" do
  before(:each) do
    assign(:sh_criterio, stub_model(ShCriterio,
      :porcentaje => 1,
      :rubro_uno => 1,
      :rubro_dos => 1,
      :rubro_tres => 1,
      :criterio_id => 1
    ).as_new_record)
  end

  it "renders new sh_criterio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sh_criterios_path, "post" do
      assert_select "input#sh_criterio_porcentaje[name=?]", "sh_criterio[porcentaje]"
      assert_select "input#sh_criterio_rubro_uno[name=?]", "sh_criterio[rubro_uno]"
      assert_select "input#sh_criterio_rubro_dos[name=?]", "sh_criterio[rubro_dos]"
      assert_select "input#sh_criterio_rubro_tres[name=?]", "sh_criterio[rubro_tres]"
      assert_select "input#sh_criterio_criterio_id[name=?]", "sh_criterio[criterio_id]"
    end
  end
end
