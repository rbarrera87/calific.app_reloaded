require "spec_helper"

describe DocentesController do
  describe "routing" do

    it "routes to #index" do
      get("/docentes").should route_to("docentes#index")
    end

    it "routes to #new" do
      get("/docentes/new").should route_to("docentes#new")
    end

    it "routes to #show" do
      get("/docentes/1").should route_to("docentes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/docentes/1/edit").should route_to("docentes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/docentes").should route_to("docentes#create")
    end

    it "routes to #update" do
      put("/docentes/1").should route_to("docentes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/docentes/1").should route_to("docentes#destroy", :id => "1")
    end

  end
end
