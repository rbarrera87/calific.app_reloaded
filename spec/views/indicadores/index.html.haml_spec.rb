require 'spec_helper'

describe "indicadores/index" do
  before(:each) do
    assign(:indicadores, [
      stub_model(Indicadore),
      stub_model(Indicadore)
    ])
  end

  it "renders a list of indicadores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
