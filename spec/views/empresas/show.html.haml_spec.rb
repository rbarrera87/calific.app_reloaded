require 'spec_helper'

describe "empresas/show" do
  before(:each) do
    @empresa = assign(:empresa, stub_model(Empresa,
      :nombre => "Nombre",
      :direcion => "Direcion",
      :numero => 1,
      :telefono => 2,
      :razon_social => "Razon Social",
      :estado => "Estado",
      :municipio => "Municipio",
      :descripcion => "Descripcion"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/Direcion/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Razon Social/)
    rendered.should match(/Estado/)
    rendered.should match(/Municipio/)
    rendered.should match(/Descripcion/)
  end
end
