require 'spec_helper'

describe "prestamo_libros/edit" do
  before(:each) do
    @prestamo_libro = assign(:prestamo_libro, stub_model(PrestamoLibro))
  end

  it "renders the edit prestamo_libro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prestamo_libro_path(@prestamo_libro), "post" do
    end
  end
end
