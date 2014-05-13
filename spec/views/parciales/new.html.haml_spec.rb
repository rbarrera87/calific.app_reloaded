require 'spec_helper'

describe "parciales/new" do
  before(:each) do
    assign(:parcial, stub_model(Parcial,
      :nombre => "MyString",
      :cuatrimestre_id => 1
    ).as_new_record)
  end

  it "renders new parcial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parciales_path, "post" do
      assert_select "input#parcial_nombre[name=?]", "parcial[nombre]"
      assert_select "input#parcial_cuatrimestre_id[name=?]", "parcial[cuatrimestre_id]"
    end
  end
end
