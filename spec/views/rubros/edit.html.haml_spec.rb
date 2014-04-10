require 'spec_helper'

describe "rubros/edit" do
  before(:each) do
    @rubro = assign(:rubro, stub_model(Rubro,
      :sb1 => 1,
      :sb2 => 1,
      :sb3 => 1,
      :sh1 => 1,
      :sh2 => 1,
      :sh3 => 1,
      :s1 => 1,
      :s2 => 1,
      :s3 => 1,
      :calificacion_id => 1,
      :asignatura_id => 1
    ))
  end

  it "renders the edit rubro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rubro_path(@rubro), "post" do
      assert_select "input#rubro_sb1[name=?]", "rubro[sb1]"
      assert_select "input#rubro_sb2[name=?]", "rubro[sb2]"
      assert_select "input#rubro_sb3[name=?]", "rubro[sb3]"
      assert_select "input#rubro_sh1[name=?]", "rubro[sh1]"
      assert_select "input#rubro_sh2[name=?]", "rubro[sh2]"
      assert_select "input#rubro_sh3[name=?]", "rubro[sh3]"
      assert_select "input#rubro_s1[name=?]", "rubro[s1]"
      assert_select "input#rubro_s2[name=?]", "rubro[s2]"
      assert_select "input#rubro_s3[name=?]", "rubro[s3]"
      assert_select "input#rubro_calificacion_id[name=?]", "rubro[calificacion_id]"
      assert_select "input#rubro_asignatura_id[name=?]", "rubro[asignatura_id]"
    end
  end
end
