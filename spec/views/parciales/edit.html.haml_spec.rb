require 'spec_helper'

describe "parciales/edit" do
  before(:each) do
    @parcial = assign(:parcial, stub_model(Parcial,
      :nombre => "MyString",
      :cuatrimestre_id => 1
    ))
  end

  it "renders the edit parcial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parcial_path(@parcial), "post" do
      assert_select "input#parcial_nombre[name=?]", "parcial[nombre]"
      assert_select "input#parcial_cuatrimestre_id[name=?]", "parcial[cuatrimestre_id]"
    end
  end
end
