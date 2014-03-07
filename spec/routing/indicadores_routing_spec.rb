require "spec_helper"

describe IndicadoresController do
  describe "routing" do

    it "routes to #index" do
      get("/indicadores").should route_to("indicadores#index")
    end

    it "routes to #new" do
      get("/indicadores/new").should route_to("indicadores#new")
    end

    it "routes to #show" do
      get("/indicadores/1").should route_to("indicadores#show", :id => "1")
    end

    it "routes to #edit" do
      get("/indicadores/1/edit").should route_to("indicadores#edit", :id => "1")
    end

    it "routes to #create" do
      post("/indicadores").should route_to("indicadores#create")
    end

    it "routes to #update" do
      put("/indicadores/1").should route_to("indicadores#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/indicadores/1").should route_to("indicadores#destroy", :id => "1")
    end

  end
end
