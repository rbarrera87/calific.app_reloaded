require 'spec_helper'

describe "parciales/index" do
  before(:each) do
    assign(:parciales, [
      stub_model(Parcial,
        :nombre => "Nombre",
        :cuatrimestre_id => 1
      ),
      stub_model(Parcial,
        :nombre => "Nombre",
        :cuatrimestre_id => 1
      )
    ])
  end

  it "renders a list of parciales" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
