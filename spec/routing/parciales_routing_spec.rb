require "spec_helper"

describe ParcialesController do
  describe "routing" do

    it "routes to #index" do
      get("/parciales").should route_to("parciales#index")
    end

    it "routes to #new" do
      get("/parciales/new").should route_to("parciales#new")
    end

    it "routes to #show" do
      get("/parciales/1").should route_to("parciales#show", :id => "1")
    end

    it "routes to #edit" do
      get("/parciales/1/edit").should route_to("parciales#edit", :id => "1")
    end

    it "routes to #create" do
      post("/parciales").should route_to("parciales#create")
    end

    it "routes to #update" do
      put("/parciales/1").should route_to("parciales#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/parciales/1").should route_to("parciales#destroy", :id => "1")
    end

  end
end
