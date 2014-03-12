require 'spec_helper'

describe "tutor_grupos/edit" do
  before(:each) do
    @tutor_grupo = assign(:tutor_grupo, stub_model(TutorGrupo,
      :grupo_id => 1,
      :grado_id => 1,
      :perfil_id => 1
    ))
  end

  it "renders the edit tutor_grupo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tutor_grupo_path(@tutor_grupo), "post" do
      assert_select "input#tutor_grupo_grupo_id[name=?]", "tutor_grupo[grupo_id]"
      assert_select "input#tutor_grupo_grado_id[name=?]", "tutor_grupo[grado_id]"
      assert_select "input#tutor_grupo_perfil_id[name=?]", "tutor_grupo[perfil_id]"
    end
  end
end
