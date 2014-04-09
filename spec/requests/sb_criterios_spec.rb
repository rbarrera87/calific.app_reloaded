require 'spec_helper'

describe "SbCriterios" do
  describe "GET /sb_criterios" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get sb_criterios_path
      response.status.should be(200)
    end
  end
end
