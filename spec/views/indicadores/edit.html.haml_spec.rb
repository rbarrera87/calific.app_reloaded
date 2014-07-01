require 'spec_helper'

describe "indicadores/edit" do
  before(:each) do
    @indicadore = assign(:indicadore, stub_model(Indicadore))
  end

  it "renders the edit indicadore form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", indicadore_path(@indicadore), "post" do
    end
  end
end
