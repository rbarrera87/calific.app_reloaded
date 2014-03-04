require 'spec_helper'

describe "prestamo_libros/show" do
  before(:each) do
    @prestamo_libro = assign(:prestamo_libro, stub_model(PrestamoLibro))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
