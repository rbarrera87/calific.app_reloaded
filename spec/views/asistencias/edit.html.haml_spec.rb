require 'spec_helper'

describe "asistencias/edit" do
  before(:each) do
    @asistencias = assign(:asistencias, stub_model(Asistencias,
      :presente => false
    ))
  end

  it "renders the edit asistencias form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", asistencias_path(@asistencias), "post" do
      assert_select "input#asistencias_presente[name=?]", "asistencias[presente]"
    end
  end
end
