require 'spec_helper'

describe "criterios/index" do
  before(:each) do
    assign(:criterios, [
      stub_model(Criterio,
        :descripcion => "Descripcion",
        :carrera_id => 1,
        :calificacion_id => 2
      ),
      stub_model(Criterio,
        :descripcion => "Descripcion",
        :carrera_id => 1,
        :calificacion_id => 2
      )
    ])
  end

  it "renders a list of criterios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
