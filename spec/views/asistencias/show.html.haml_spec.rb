require 'spec_helper'

describe "asistencias/show" do
  before(:each) do
    @asistencias = assign(:asistencias, stub_model(Asistencias,
      :presente => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
