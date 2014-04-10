require 'spec_helper'

describe "s_criterios/index" do
  before(:each) do
    assign(:s_criterios, [
      stub_model(SCriterio,
        :porcentaje => 1,
        :rubro_uno => 2,
        :rubro_dos => 3,
        :rubro_tres => 4,
        :criterio_id => 5
      ),
      stub_model(SCriterio,
        :porcentaje => 1,
        :rubro_uno => 2,
        :rubro_dos => 3,
        :rubro_tres => 4,
        :criterio_id => 5
      )
    ])
  end

  it "renders a list of s_criterios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
