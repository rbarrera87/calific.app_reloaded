require 'spec_helper'

describe "profesors/new" do
  before(:each) do
    assign(:profesor, stub_model(Profesor,
      :tipo_horario => "MyString",
      :estado => "MyString"
    ).as_new_record)
  end

  it "renders new profesor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profesors_path, "post" do
      assert_select "input#profesor_tipo_horario[name=?]", "profesor[tipo_horario]"
      assert_select "input#profesor_estado[name=?]", "profesor[estado]"
    end
  end
end
