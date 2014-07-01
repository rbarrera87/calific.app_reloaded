require 'spec_helper'

describe "consejeros/index" do
  before(:each) do
    assign(:consejeros, [
      stub_model(Consejero,
        :carrera_id => 1,
        :grupo_id => 2,
        :grado_id => 3,
        :perfil_id => 4
      ),
      stub_model(Consejero,
        :carrera_id => 1,
        :grupo_id => 2,
        :grado_id => 3,
        :perfil_id => 4
      )
    ])
  end

  it "renders a list of consejeros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
