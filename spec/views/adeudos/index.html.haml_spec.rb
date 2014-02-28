require 'spec_helper'

describe "adeudos/index" do
  before(:each) do
    assign(:adeudos, [
      stub_model(Adeudo,
        :numero_libros => 1,
        :multa => "9.99",
        :total => "9.99",
        :concepto => "Concepto",
        :perfil_id => 2,
        :libro_id => 3
      ),
      stub_model(Adeudo,
        :numero_libros => 1,
        :multa => "9.99",
        :total => "9.99",
        :concepto => "Concepto",
        :perfil_id => 2,
        :libro_id => 3
      )
    ])
  end

  it "renders a list of adeudos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Concepto".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
