require 'spec_helper'

describe "asistencias/new" do
  before(:each) do
    assign(:asistencias, stub_model(Asistencias,
      :presente => false
    ).as_new_record)
  end

  it "renders new asistencias form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", asistencias_index_path, "post" do
      assert_select "input#asistencias_presente[name=?]", "asistencias[presente]"
    end
  end
end
