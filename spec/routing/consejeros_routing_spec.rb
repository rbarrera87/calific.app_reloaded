require "spec_helper"

describe ConsejerosController do
  describe "routing" do

    it "routes to #index" do
      get("/consejeros").should route_to("consejeros#index")
    end

    it "routes to #new" do
      get("/consejeros/new").should route_to("consejeros#new")
    end

    it "routes to #show" do
      get("/consejeros/1").should route_to("consejeros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/consejeros/1/edit").should route_to("consejeros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/consejeros").should route_to("consejeros#create")
    end

    it "routes to #update" do
      put("/consejeros/1").should route_to("consejeros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/consejeros/1").should route_to("consejeros#destroy", :id => "1")
    end

  end
end
