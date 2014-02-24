require 'spec_helper'

describe "Subjects" do
  describe "GET /subjects" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      ap response
      puts "==========================="
      ap response.status
      ap subjects_path
      get subjects_path
      ap response
      response.status.should be(200)
    end
  end
end
