require 'spec_helper'

describe "asistencias/index" do
  before(:each) do
    assign(:asistencias, [
      stub_model(Asistencias,
        :presente => false
      ),
      stub_model(Asistencias,
        :presente => false
      )
    ])
  end

  it "renders a list of asistencias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
