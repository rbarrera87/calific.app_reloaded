require 'spec_helper'

describe "profesor_catalogos/new" do
  before(:each) do
    assign(:profesor_catalogo, stub_model(ProfesorCatalogo,
      :tipo_horario => "MyString",
      :estado => "MyString"
    ).as_new_record)
  end

  it "renders new profesor_catalogo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profesor_catalogos_path, "post" do
      assert_select "input#profesor_catalogo_tipo_horario[name=?]", "profesor_catalogo[tipo_horario]"
      assert_select "input#profesor_catalogo_estado[name=?]", "profesor_catalogo[estado]"
    end
  end
end
