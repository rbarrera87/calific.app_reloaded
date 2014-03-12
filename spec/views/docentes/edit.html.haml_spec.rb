require 'spec_helper'

describe "docentes/edit" do
  before(:each) do
    @docente = assign(:docente, stub_model(Docente))
  end

  it "renders the edit docente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", docente_path(@docente), "post" do
    end
  end
end
