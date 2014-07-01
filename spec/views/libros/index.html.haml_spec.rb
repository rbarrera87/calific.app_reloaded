require 'spec_helper'

describe "libros/index" do
  before(:each) do
    assign(:libros, [
      stub_model(Libro,
        :nombre => "Nombre",
        :editorial => "Editorial",
        :autor => "Autor",
        :categoria => "Categoria"
      ),
      stub_model(Libro,
        :nombre => "Nombre",
        :editorial => "Editorial",
        :autor => "Autor",
        :categoria => "Categoria"
      )
    ])
  end

  it "renders a list of libros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Editorial".to_s, :count => 2
    assert_select "tr>td", :text => "Autor".to_s, :count => 2
    assert_select "tr>td", :text => "Categoria".to_s, :count => 2
  end
end
