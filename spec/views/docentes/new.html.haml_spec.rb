require 'spec_helper'

describe "docentes/new" do
  before(:each) do
    assign(:docente, stub_model(Docente).as_new_record)
  end

  it "renders new docente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", docentes_path, "post" do
    end
  end
end
