require 'spec_helper'

describe "parciales/show" do
  before(:each) do
    @parcial = assign(:parcial, stub_model(Parcial,
      :nombre => "Nombre",
      :cuatrimestre_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/1/)
  end
end
