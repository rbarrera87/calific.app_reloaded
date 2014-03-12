require 'spec_helper'

describe "tutor_grupos/show" do
  before(:each) do
    @tutor_grupo = assign(:tutor_grupo, stub_model(TutorGrupo,
      :grupo_id => 1,
      :grado_id => 2,
      :perfil_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
