require 'spec_helper'

describe "prestamo_libros/new" do
  before(:each) do
    assign(:prestamo_libro, stub_model(PrestamoLibro).as_new_record)
  end

  it "renders new prestamo_libro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prestamo_libros_path, "post" do
    end
  end
end
