require 'spec_helper'

describe "profesors/show" do
  before(:each) do
    @profesor = assign(:profesor, stub_model(Profesor,
      :tipo_horario => "Tipo Horario",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo Horario/)
    rendered.should match(/Estado/)
  end
end
