require 'spec_helper'

describe "libros/edit" do
  before(:each) do
    @libro = assign(:libro, stub_model(Libro,
      :nombre => "MyString",
      :editorial => "MyString",
      :autor => "MyString",
      :categoria => "MyString"
    ))
  end

  it "renders the edit libro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", libro_path(@libro), "post" do
      assert_select "input#libro_nombre[name=?]", "libro[nombre]"
      assert_select "input#libro_editorial[name=?]", "libro[editorial]"
      assert_select "input#libro_autor[name=?]", "libro[autor]"
      assert_select "input#libro_categoria[name=?]", "libro[categoria]"
    end
  end
end
