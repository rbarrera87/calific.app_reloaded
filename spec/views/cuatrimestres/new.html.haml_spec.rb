require 'spec_helper'

describe "cuatrimestres/new" do
  before(:each) do
    assign(:cuatrimestre, stub_model(Cuatrimestre,
      :nombre => "MyString"
    ).as_new_record)
  end

  it "renders new cuatrimestre form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cuatrimestres_path, "post" do
      assert_select "input#cuatrimestre_nombre[name=?]", "cuatrimestre[nombre]"
    end
  end
end
