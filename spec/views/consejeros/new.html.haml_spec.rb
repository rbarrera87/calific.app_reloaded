require 'spec_helper'

describe "consejeros/new" do
  before(:each) do
    assign(:consejero, stub_model(Consejero,
      :carrera_id => 1,
      :grupo_id => 1,
      :grado_id => 1,
      :perfil_id => 1
    ).as_new_record)
  end

  it "renders new consejero form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", consejeros_path, "post" do
      assert_select "input#consejero_carrera_id[name=?]", "consejero[carrera_id]"
      assert_select "input#consejero_grupo_id[name=?]", "consejero[grupo_id]"
      assert_select "input#consejero_grado_id[name=?]", "consejero[grado_id]"
      assert_select "input#consejero_perfil_id[name=?]", "consejero[perfil_id]"
    end
  end
end
