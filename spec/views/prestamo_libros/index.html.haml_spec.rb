require 'spec_helper'

describe "prestamo_libros/index" do
  before(:each) do
    assign(:prestamo_libros, [
      stub_model(PrestamoLibro),
      stub_model(PrestamoLibro)
    ])
  end

  it "renders a list of prestamo_libros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
