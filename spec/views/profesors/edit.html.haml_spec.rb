require 'spec_helper'

describe "profesors/edit" do
  before(:each) do
    @profesor = assign(:profesor, stub_model(Profesor,
      :tipo_horario => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit profesor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profesor_path(@profesor), "post" do
      assert_select "input#profesor_tipo_horario[name=?]", "profesor[tipo_horario]"
      assert_select "input#profesor_estado[name=?]", "profesor[estado]"
    end
  end
end
