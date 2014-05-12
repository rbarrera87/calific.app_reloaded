require 'spec_helper'

describe "empresas/index" do
  before(:each) do
    assign(:empresas, [
      stub_model(Empresa,
        :nombre => "Nombre",
        :direcion => "Direcion",
        :numero => 1,
        :telefono => 2,
        :razon_social => "Razon Social",
        :estado => "Estado",
        :municipio => "Municipio",
        :descripcion => "Descripcion"
      ),
      stub_model(Empresa,
        :nombre => "Nombre",
        :direcion => "Direcion",
        :numero => 1,
        :telefono => 2,
        :razon_social => "Razon Social",
        :estado => "Estado",
        :municipio => "Municipio",
        :descripcion => "Descripcion"
      )
    ])
  end

  it "renders a list of empresas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Direcion".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Razon Social".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Municipio".to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
  end
end
