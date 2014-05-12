require 'spec_helper'

describe "vinculaciones/index" do
  before(:each) do
    assign(:vinculaciones, [
      stub_model(Vinculacion,
        :carrera_id => 1,
        :perfil_id => 2,
        :nombre_proyecto => "Nombre Proyecto",
        :nombre_director => "Nombre Director"
      ),
      stub_model(Vinculacion,
        :carrera_id => 1,
        :perfil_id => 2,
        :nombre_proyecto => "Nombre Proyecto",
        :nombre_director => "Nombre Director"
      )
    ])
  end

  it "renders a list of vinculaciones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Nombre Proyecto".to_s, :count => 2
    assert_select "tr>td", :text => "Nombre Director".to_s, :count => 2
  end
end
