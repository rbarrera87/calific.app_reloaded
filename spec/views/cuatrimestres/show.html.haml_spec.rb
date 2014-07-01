require 'spec_helper'

describe "cuatrimestres/show" do
  before(:each) do
    @cuatrimestre = assign(:cuatrimestre, stub_model(Cuatrimestre,
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
  end
end
