require 'spec_helper'

describe "profesor_catalogos/edit" do
  before(:each) do
    @profesor_catalogo = assign(:profesor_catalogo, stub_model(ProfesorCatalogo,
      :tipo_horario => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit profesor_catalogo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profesor_catalogo_path(@profesor_catalogo), "post" do
      assert_select "input#profesor_catalogo_tipo_horario[name=?]", "profesor_catalogo[tipo_horario]"
      assert_select "input#profesor_catalogo_estado[name=?]", "profesor_catalogo[estado]"
    end
  end
end
