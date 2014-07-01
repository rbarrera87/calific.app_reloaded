require 'spec_helper'

describe "encuestas/index" do
  before(:each) do
    assign(:encuestas, [
      stub_model(Encuesta,
        :nombre => "Nombre"
      ),
      stub_model(Encuesta,
        :nombre => "Nombre"
      )
    ])
  end

  it "renders a list of encuestas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
  end
end
