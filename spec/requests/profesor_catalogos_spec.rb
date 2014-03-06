require 'spec_helper'

describe "ProfesorCatalogos" do
  describe "GET /profesor_catalogos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get profesor_catalogos_path
      response.status.should be(200)
    end
  end
end
