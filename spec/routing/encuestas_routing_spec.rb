require "spec_helper"

describe EncuestasController do
  describe "routing" do

    it "routes to #index" do
      get("/encuestas").should route_to("encuestas#index")
    end

    it "routes to #new" do
      get("/encuestas/new").should route_to("encuestas#new")
    end

    it "routes to #show" do
      get("/encuestas/1").should route_to("encuestas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/encuestas/1/edit").should route_to("encuestas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/encuestas").should route_to("encuestas#create")
    end

    it "routes to #update" do
      put("/encuestas/1").should route_to("encuestas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/encuestas/1").should route_to("encuestas#destroy", :id => "1")
    end

  end
end
