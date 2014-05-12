require 'spec_helper'

describe "empresas/new" do
  before(:each) do
    assign(:empresa, stub_model(Empresa,
      :nombre => "MyString",
      :direcion => "MyString",
      :numero => 1,
      :telefono => 1,
      :razon_social => "MyString",
      :estado => "MyString",
      :municipio => "MyString",
      :descripcion => "MyString"
    ).as_new_record)
  end

  it "renders new empresa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", empresas_path, "post" do
      assert_select "input#empresa_nombre[name=?]", "empresa[nombre]"
      assert_select "input#empresa_direcion[name=?]", "empresa[direcion]"
      assert_select "input#empresa_numero[name=?]", "empresa[numero]"
      assert_select "input#empresa_telefono[name=?]", "empresa[telefono]"
      assert_select "input#empresa_razon_social[name=?]", "empresa[razon_social]"
      assert_select "input#empresa_estado[name=?]", "empresa[estado]"
      assert_select "input#empresa_municipio[name=?]", "empresa[municipio]"
      assert_select "input#empresa_descripcion[name=?]", "empresa[descripcion]"
    end
  end
end
