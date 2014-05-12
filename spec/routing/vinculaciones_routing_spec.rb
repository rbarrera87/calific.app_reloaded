require "spec_helper"

describe VinculacionesController do
  describe "routing" do

    it "routes to #index" do
      get("/vinculaciones").should route_to("vinculaciones#index")
    end

    it "routes to #new" do
      get("/vinculaciones/new").should route_to("vinculaciones#new")
    end

    it "routes to #show" do
      get("/vinculaciones/1").should route_to("vinculaciones#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vinculaciones/1/edit").should route_to("vinculaciones#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vinculaciones").should route_to("vinculaciones#create")
    end

    it "routes to #update" do
      put("/vinculaciones/1").should route_to("vinculaciones#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vinculaciones/1").should route_to("vinculaciones#destroy", :id => "1")
    end

  end
end
