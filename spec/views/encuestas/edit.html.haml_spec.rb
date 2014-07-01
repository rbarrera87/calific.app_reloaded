require 'spec_helper'

describe "encuestas/edit" do
  before(:each) do
    @encuesta = assign(:encuesta, stub_model(Encuesta,
      :nombre => "MyString"
    ))
  end

  it "renders the edit encuesta form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", encuesta_path(@encuesta), "post" do
      assert_select "input#encuesta_nombre[name=?]", "encuesta[nombre]"
    end
  end
end
