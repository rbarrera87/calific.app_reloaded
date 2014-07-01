require 'spec_helper'

describe "criterios/show" do
  before(:each) do
    @criterio = assign(:criterio, stub_model(Criterio))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
