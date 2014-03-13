require 'spec_helper'

describe "tutorias/index" do
  before(:each) do
    assign(:tutorias, [
      stub_model(Tutorias,
        :mes1 => 1,
        :mes2 => 2,
        :mes3 => 3,
        :mes4 => 4,
        :grado_id => 5,
        :grupo_id => 6,
        :perfil_id => 7
      ),
      stub_model(Tutorias,
        :mes1 => 1,
        :mes2 => 2,
        :mes3 => 3,
        :mes4 => 4,
        :grado_id => 5,
        :grupo_id => 6,
        :perfil_id => 7
      )
    ])
  end

  it "renders a list of tutorias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
  end
end
