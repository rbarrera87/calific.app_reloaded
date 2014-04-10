require 'spec_helper'

describe "rubros/index" do
  before(:each) do
    assign(:rubros, [
      stub_model(Rubro,
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
      ),
      stub_model(Rubro,
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
      )
    ])
  end

  it "renders a list of rubros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
  end
end
