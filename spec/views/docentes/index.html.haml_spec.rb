require 'spec_helper'

describe "docentes/index" do
  before(:each) do
    assign(:docentes, [
      stub_model(Docente),
      stub_model(Docente)
    ])
  end

  it "renders a list of docentes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
