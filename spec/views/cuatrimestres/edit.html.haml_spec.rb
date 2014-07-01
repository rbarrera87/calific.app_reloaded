require 'spec_helper'

describe "cuatrimestres/edit" do
  before(:each) do
    @cuatrimestr = assign(:cuatrimestr, stub_model(Cuatrimestr,
      :nombre => "MyString"
    ))
  end

  it "renders the edit cuatrimestr form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cuatrimestr_path(@cuatrimestr), "post" do
      assert_select "input#cuatrimestr_nombre[name=?]", "cuatrimestr[nombre]"
    end
  end
end
