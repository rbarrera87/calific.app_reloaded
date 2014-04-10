require 'spec_helper'

describe "rubros/show" do
  before(:each) do
    @rubro = assign(:rubro, stub_model(Rubro,
      :sb1 => 1,
      :sb2 => 2,
      :sb3 => 3,
      :sh1 => 4,
      :sh2 => 5,
      :sh3 => 6,
      :s1 => 7,
      :s2 => 8,
      :s3 => 9,
      :calificacion_id => 10,
      :asignatura_id => 11
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
    rendered.should match(/8/)
    rendered.should match(/9/)
    rendered.should match(/10/)
    rendered.should match(/11/)
  end
end
