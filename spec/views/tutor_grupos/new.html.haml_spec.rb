require 'spec_helper'

describe "tutor_grupos/new" do
  before(:each) do
    assign(:tutor_grupo, stub_model(TutorGrupo,
      :grupo_id => 1,
      :grado_id => 1,
      :perfil_id => 1
    ).as_new_record)
  end

  it "renders new tutor_grupo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tutor_grupos_path, "post" do
      assert_select "input#tutor_grupo_grupo_id[name=?]", "tutor_grupo[grupo_id]"
      assert_select "input#tutor_grupo_grado_id[name=?]", "tutor_grupo[grado_id]"
      assert_select "input#tutor_grupo_perfil_id[name=?]", "tutor_grupo[perfil_id]"
    end
  end
end
