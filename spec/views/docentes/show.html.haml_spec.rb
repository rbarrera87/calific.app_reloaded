require 'spec_helper'

describe "docentes/show" do
  before(:each) do
    @docente = assign(:docente, stub_model(Docente))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
