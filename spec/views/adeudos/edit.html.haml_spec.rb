require 'spec_helper'

describe "adeudos/edit" do
  before(:each) do
    @adeudo = assign(:adeudo, stub_model(Adeudo,
      :numero_libros => 1,
      :multa => "9.99",
      :total => "9.99",
      :concepto => "MyString",
      :perfil_id => 1,
      :libro_id => 1
    ))
  end

  it "renders the edit adeudo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", adeudo_path(@adeudo), "post" do
      assert_select "input#adeudo_numero_libros[name=?]", "adeudo[numero_libros]"
      assert_select "input#adeudo_multa[name=?]", "adeudo[multa]"
      assert_select "input#adeudo_total[name=?]", "adeudo[total]"
      assert_select "input#adeudo_concepto[name=?]", "adeudo[concepto]"
      assert_select "input#adeudo_perfil_id[name=?]", "adeudo[perfil_id]"
      assert_select "input#adeudo_libro_id[name=?]", "adeudo[libro_id]"
    end
  end
end
