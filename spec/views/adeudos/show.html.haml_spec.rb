require 'spec_helper'

describe "adeudos/show" do
  before(:each) do
    @adeudo = assign(:adeudo, stub_model(Adeudo,
      :numero_libros => 1,
      :multa => "9.99",
      :total => "9.99",
      :concepto => "Concepto",
      :perfil_id => 2,
      :libro_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Concepto/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
