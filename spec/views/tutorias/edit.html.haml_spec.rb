require 'spec_helper'

describe "tutorias/edit" do
  before(:each) do
    @tutorias = assign(:tutorias, stub_model(Tutorias,
      :mes1 => 1,
      :mes2 => 1,
      :mes3 => 1,
      :mes4 => 1,
      :grado_id => 1,
      :grupo_id => 1,
      :perfil_id => 1
    ))
  end

  it "renders the edit tutorias form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tutorias_path(@tutorias), "post" do
      assert_select "input#tutorias_mes1[name=?]", "tutorias[mes1]"
      assert_select "input#tutorias_mes2[name=?]", "tutorias[mes2]"
      assert_select "input#tutorias_mes3[name=?]", "tutorias[mes3]"
      assert_select "input#tutorias_mes4[name=?]", "tutorias[mes4]"
      assert_select "input#tutorias_grado_id[name=?]", "tutorias[grado_id]"
      assert_select "input#tutorias_grupo_id[name=?]", "tutorias[grupo_id]"
      assert_select "input#tutorias_perfil_id[name=?]", "tutorias[perfil_id]"
    end
  end
end
