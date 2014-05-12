require 'spec_helper'

describe "vinculaciones/edit" do
  before(:each) do
    @vinculacion = assign(:vinculacion, stub_model(Vinculacion,
      :carrera_id => 1,
      :perfil_id => 1,
      :nombre_proyecto => "MyString",
      :nombre_director => "MyString"
    ))
  end

  it "renders the edit vinculacion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vinculacion_path(@vinculacion), "post" do
      assert_select "input#vinculacion_carrera_id[name=?]", "vinculacion[carrera_id]"
      assert_select "input#vinculacion_perfil_id[name=?]", "vinculacion[perfil_id]"
      assert_select "input#vinculacion_nombre_proyecto[name=?]", "vinculacion[nombre_proyecto]"
      assert_select "input#vinculacion_nombre_director[name=?]", "vinculacion[nombre_director]"
    end
  end
end
