require 'spec_helper'

describe "tutor_grupos/index" do
  before(:each) do
    assign(:tutor_grupos, [
      stub_model(TutorGrupo,
        :grupo_id => 1,
        :grado_id => 2,
        :perfil_id => 3
      ),
      stub_model(TutorGrupo,
        :grupo_id => 1,
        :grado_id => 2,
        :perfil_id => 3
      )
    ])
  end

  it "renders a list of tutor_grupos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
