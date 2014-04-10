require "spec_helper"

describe RubrosController do
  describe "routing" do

    it "routes to #index" do
      get("/rubros").should route_to("rubros#index")
    end

    it "routes to #new" do
      get("/rubros/new").should route_to("rubros#new")
    end

    it "routes to #show" do
      get("/rubros/1").should route_to("rubros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rubros/1/edit").should route_to("rubros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rubros").should route_to("rubros#create")
    end

    it "routes to #update" do
      put("/rubros/1").should route_to("rubros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rubros/1").should route_to("rubros#destroy", :id => "1")
    end

  end
end
