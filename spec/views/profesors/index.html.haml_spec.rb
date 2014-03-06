require 'spec_helper'

describe "profesors/index" do
  before(:each) do
    assign(:profesors, [
      stub_model(Profesor,
        :tipo_horario => "Tipo Horario",
        :estado => "Estado"
      ),
      stub_model(Profesor,
        :tipo_horario => "Tipo Horario",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of profesors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo Horario".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
