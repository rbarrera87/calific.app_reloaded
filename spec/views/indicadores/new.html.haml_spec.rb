require 'spec_helper'

describe "indicadores/new" do
  before(:each) do
    assign(:indicadore, stub_model(Indicadore).as_new_record)
  end

  it "renders new indicadore form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", indicadores_path, "post" do
    end
  end
end
