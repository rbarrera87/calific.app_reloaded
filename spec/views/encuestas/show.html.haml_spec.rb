require 'spec_helper'

describe "encuestas/show" do
  before(:each) do
    @encuesta = assign(:encuesta, stub_model(Encuesta,
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
  end
end
