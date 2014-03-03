require 'spec_helper'

describe "criterios/index" do
  before(:each) do
    assign(:criterios, [
      stub_model(Criterio),
      stub_model(Criterio)
    ])
  end

  it "renders a list of criterios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
