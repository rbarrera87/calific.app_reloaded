require 'spec_helper'

describe "libros/show" do
  before(:each) do
    @libro = assign(:libro, stub_model(Libro,
      :nombre => "Nombre",
      :editorial => "Editorial",
      :autor => "Autor",
      :categoria => "Categoria"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/Editorial/)
    rendered.should match(/Autor/)
    rendered.should match(/Categoria/)
  end
end
