require 'spec_helper'

describe "criterios/edit" do
  before(:each) do
    @criterio = assign(:criterio, stub_model(Criterio))
  end

  it "renders the edit criterio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", criterio_path(@criterio), "post" do
    end
  end
end
