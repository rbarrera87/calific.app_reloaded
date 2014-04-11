require 'spec_helper'

describe "encuestas/new" do
  before(:each) do
    assign(:encuesta, stub_model(Encuesta,
      :nombre => "MyString"
    ).as_new_record)
  end

  it "renders new encuesta form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", encuestas_path, "post" do
      assert_select "input#encuesta_nombre[name=?]", "encuesta[nombre]"
    end
  end
end
