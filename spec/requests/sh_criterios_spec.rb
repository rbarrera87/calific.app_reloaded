require 'spec_helper'

describe "ShCriterios" do
  describe "GET /sh_criterios" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get sh_criterios_path
      response.status.should be(200)
    end
  end
end
