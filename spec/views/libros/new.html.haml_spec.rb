require 'spec_helper'

describe "libros/new" do
  before(:each) do
    assign(:libro, stub_model(Libro,
      :nombre => "MyString",
      :editorial => "MyString",
      :autor => "MyString",
      :categoria => "MyString"
    ).as_new_record)
  end

  it "renders new libro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", libros_path, "post" do
      assert_select "input#libro_nombre[name=?]", "libro[nombre]"
      assert_select "input#libro_editorial[name=?]", "libro[editorial]"
      assert_select "input#libro_autor[name=?]", "libro[autor]"
      assert_select "input#libro_categoria[name=?]", "libro[categoria]"
    end
  end
end
