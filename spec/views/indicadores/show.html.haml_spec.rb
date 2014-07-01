require 'spec_helper'

describe "indicadores/show" do
  before(:each) do
    @indicadore = assign(:indicadore, stub_model(Indicadore))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
