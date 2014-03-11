require 'spec_helper'

describe "consejeros/edit" do
  before(:each) do
    @consejero = assign(:consejero, stub_model(Consejero,
      :carrera_id => 1,
      :grupo_id => 1,
      :grado_id => 1,
      :perfil_id => 1
    ))
  end

  it "renders the edit consejero form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", consejero_path(@consejero), "post" do
      assert_select "input#consejero_carrera_id[name=?]", "consejero[carrera_id]"
      assert_select "input#consejero_grupo_id[name=?]", "consejero[grupo_id]"
      assert_select "input#consejero_grado_id[name=?]", "consejero[grado_id]"
      assert_select "input#consejero_perfil_id[name=?]", "consejero[perfil_id]"
    end
  end
end
