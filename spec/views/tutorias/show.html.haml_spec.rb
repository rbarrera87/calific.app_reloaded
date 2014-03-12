require 'spec_helper'

describe "tutorias/show" do
  before(:each) do
    @tutorias = assign(:tutorias, stub_model(Tutorias,
      :mes1 => 1,
      :mes2 => 2,
      :mes3 => 3,
      :mes4 => 4,
      :grado_id => 5,
      :grupo_id => 6,
      :perfil_id => 7
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
  end
end
