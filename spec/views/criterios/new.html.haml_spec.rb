require 'spec_helper'

describe "criterios/new" do
  before(:each) do
    assign(:criterio, stub_model(Criterio).as_new_record)
  end

  it "renders new criterio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", criterios_path, "post" do
    end
  end
end
